class PostsController < ApplicationController

	def index
	@posts = Post.all

		
	@hash = Gmaps4rails.build_markers(@posts) do |post, marker|
		marker.lat post.latitude
		marker.lng post.longitude
		marker.infowindow render _duckposts.html.erb
		marker.json({:id => post.id})
		end
	end

	def new
		@post = Post.new
	end

	def edit
		@posts = Post.all.map { |p| [p.location, p.blog]}
		@users = User.all.map { |n| [n.intsagram]}
	end

	def create
		@post = post.new(post_params)
		if @post.save!
			redirect_to post_path
		else
			render 'posts#new'
		end
	end

	private

		def post_params
			params.require(:post).permit(:photo_id, :user_id, :duck_id, :location, :blog, :name, :instagram, :email)
		end
end