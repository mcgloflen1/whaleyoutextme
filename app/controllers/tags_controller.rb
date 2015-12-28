class TagsController < ApplicationController

	def facts
		@posts = Post.tagged_with(["facts", "facts"], :any => true).approved.popular.paginate(:page => params[:page], :per_page => 6)
	end

	def facts_recent
		@posts = Post.tagged_with(["facts", "facts"], :any => true).approved.newest.paginate(:page => params[:page], :per_page => 6)
	end

	def jokes
		@posts = Post.tagged_with(["jokes", "joke"], :any => true).approved.popular.paginate(:page => params[:page], :per_page => 6)
	end

	def jokes_recent
		@posts = Post.tagged_with(["jokes", "joke"], :any => true).approved.newest.paginate(:page => params[:page], :per_page => 6)
	end

	def quotes
		@posts = Post.tagged_with(["quotes", "quote"], :any => true).approved.popular.paginate(:page => params[:page], :per_page => 6)
	end

	def quotes_recent
		@posts = Post.tagged_with(["quotes", "quote"], :any => true).approved.newest.paginate(:page => params[:page], :per_page => 6)
	end

end
