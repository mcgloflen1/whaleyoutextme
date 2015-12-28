class PostsController < ApplicationController

	before_filter :authenticate_user!, :except => [:all, :all_recent, :random, :profile]

	def all
		if params[:q]
			@posts = Post.where("title LIKE ? OR description LIKE ?", "%#{params[:q]}%", "%#{params[:q]}%").approved.popular.paginate(:page => params[:page], :per_page => 6)
		else
			@posts = Post.all.approved.popular.paginate(:page => params[:page], :per_page => 6)
		end
	end

	def all_recent
		@posts = Post.all.approved.newest.paginate(:page => params[:page], :per_page => 6)
	end

	def random
		@posts = Post.all.approved.order("RANDOM()").paginate(:page => params[:page], :per_page => 6)
	end
    
    def index
        @posts = current_user.posts.newest.paginate(:page => params[:page], :per_page => 6)
        
    end
        
    def new
		@post = Post.new
		@user = User.find(params[:user_id])
	end

	def create
		@user = User.find(params[:user_id])
		@post = User.find(params[:user_id]).posts.create(post_params)
		@post.tag_list = 

		if @post.valid?
			redirect_to user_path(current_user.id)
			flash[:success] = "Post successfully saved!"
		else
			flash[:error] = "You must fill out all fields!"
			render :new
		end
	end
	
	def edit
	    @user = User.find(params[:user_id])
        @post = @user.posts.find(params[:id])
    end
    
    def update
        @post = User.find(params[:user_id]).posts.find(params[:id])
        
        @post.update_attributes(post_params)
        
        redirect_to user_path(current_user.id)
        flash[:success] = "Post successfully updated!"
    end
    
    def destroy
        @user = User.find(params[:user_id])
        @post = @user.posts.find(params[:id])
        
        @post.destroy
        
        redirect_to :back
    end
	
	def dashboard
	    @user = current_user

	    @posts = current_user.posts.newest.paginate(:page => params[:page], :per_page => 6)
	    @posts_pending = @user.posts.pending.newest
		
		@posts_admin = Post.pending.order("updated_at asc")

		@notifications = @user.notifications.newest
		@notification_count = @user.notifications.count

		@notification = Notification.new

	end

	def edit_admin
		if current_user.admin?
        	@post = Post.find(params[:id])
        	@user = @post.user.username
        end
	end

	def update_admin
		if current_user.admin?
        	@post = Post.find(params[:id])
        	@post.update_attributes(post_params)
        	redirect_to user_path(current_user.id)
        	flash[:success] = "Post published. Yeee!"

        	Notification.create(user_id: @post.user_id, subject: "Post approved!", body: new_post_subscriber_path(@post.id))

        end
    end

	def profile
		@user = User.find(params[:user_id])
		@posts = @user.posts.approved.popular.paginate(:page => params[:page], :per_page => 6)
	end

private

	def post_params
		params.require(:post).permit(:postreview, :tag_list, :additional_info, :title, :description, :text1, :text2, :text3, :text4, :text5, :text6, :text7, :text8, :text9, :text10, :text11, :text12, :text13, :text14, :text15, :text16, :text17, :text18, :text19, :text20, :text21, :text22, :text23, :text24, :text25, :text26, :text27, :text28, :text29, :text30, :avatar)
	end

	def notification_params
		params.require(:notification).permit(:subject, :body, :user_id)
	end
       
end
