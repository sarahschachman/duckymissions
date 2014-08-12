class DucksController < ApplicationController

	def index
		@ducks = Duck.all
		@posts = Post.all
		end
	end

	def new
		@duck = Duck.new
	end

	def edit
		@ducks = Duck.all.map {|p| [p.name, p.url, p. code]}
		@mission = Mission.find(params[:id])
		@missions = Mission.all.map { |n| [n.destination, n.deadline]}
	end

	def destroy
		@duck = Duck.find(params[:id])
		@duck.destroy

		redirect_to ducks_path
	end

	def create
		@duck = Duck.new(duck_params)

		if @duck.save
			redirect_to ducks_path
		else
			render 'ducks#new'
		end
	end

	private

		def duck_params
			params.require(duck).permit(:name, :url, :code, :mission)
		end

end
