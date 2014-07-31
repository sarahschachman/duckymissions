class MissionsController < ApplicationController

	def index 
		@missions = Mission.all
	end

	def new
		@mission = Mission.new
		set_duck
	end

	def show
		@mission = Mission.find(params[:id])
	end

	def update
		@mission = Mission.find(params[:id])
		@missions = Mission.all.map { |n| [n.location, n.deadline]}
		@mission.update(mission_params)
		redirect_to ducks_path
	end

	def destroy
		@mission = Mission.find(params[:id])
		@mission.destroy

		redirect_to ducks_path
	end

	def create
		@mission = Mission.new(mission_params)
		
		if params["mission"]["duck_id"] == nil
			@duck = Duck.create()
			@duck.update_attributes(:name => params["duck_name"])
			@duck.update_attributes(:url => params["duck_url"])
			@duck.update_attributes(:code => params["duck_code"])
			@mission.duck_id = @duck.id
		else

		end

		if @mission.save
			redirect_to ducks_path, :alert => "Your mission was successfully created."
		else 
			set_duck
			render :new
		end
	end

	private

		def mission_params
			params.require(:mission).permit(:id, :destination, :deadline, :duck_id)
		end

		def set_duck
			@ducks = Duck.where(:duck_id => current_duck.id)
		end
end