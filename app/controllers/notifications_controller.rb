class NotificationsController < ApplicationController

	def destroy
		@notification = Notification.find(params[:id])
        
        @notification.destroy
 
        redirect_to :back
	end

	def create
		@user_id = params[:notification][:user_id]
		@subject = params[:notification][:subject]
		@body = params[:notification][:body]

		if @user_id == "all"
			@users = User.all
			@users.each do |user|
	        	@notification = Notification.create(subject: @subject, body: @body, user_id: user.id)
	    	end
	    else
	    	begin
	    		@user = User.find_by_username(@user_id).id
	    		@notification = Notification.create(subject: @subject, body: @body, user_id: @user)
	    	rescue
	    		@notification = Notification.create(notification_params)
	    	end
	    end

	    if @notification.valid?
	    	redirect_to :back
			flash[:success] = "Notification sent to " + @user_id + "."
		else
			redirect_to :back
			flash[:error] = "Please fill out all fields!"
		end

	end

private

	def notification_params
		params.require(:notification).permit(:subject, :body, :user_id)
	end

end
