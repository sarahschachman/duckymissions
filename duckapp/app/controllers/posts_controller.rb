class PostsController < ApplicationController

	def index
		@posts = Post.all
	end

	def new
		@post = Post.new
	end

	def edit
		@posts = Post.all.map { |p| [p.location, p.blog]}
		@users = User.all.map { |n| [n.intsagram]}

	def create
		@post = post.new(post_params)
		if @post.save!
			redirect_to post_path
		else
			render 'new'
		end
	end

	private

		def post_params
			params.require(:post).permit(:photo_id, :user_id, :duck_id, :location, :blog )
		end
end