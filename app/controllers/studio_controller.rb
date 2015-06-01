class StudioController < ApplicationController
  
	
	def index
		@studio = Studio.all


	  def new
	  	@studio = Studio.new
	  end

	  def show
	  	@studio = Studio.find(params[:id])
	  end

	  def edit
	  	@studio = Studio.find(params[:id])
	  end

  		def create
  			@post = Studio.new(params.require(:studio).permit(:studio_num :studio_booked_start :studio_booked_end))

  			if @studio.save
  				redirect_to root_path, notice: 'studio booked'
  			else
  			renger :new
  			end
  		end



end
