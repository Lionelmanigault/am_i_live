class StudiosController < ApplicationController
  
	
	def index
		@studio = Studio.all
  end


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
  			@studio = Studio.new(params.require(:studio).permit(:studio_num, :studio_booked_start, :studio_booked_end))

  			if @studio.save
  				redirect_to root_path, notice: 'studio booked'
  			else
  			renger :new
  			end
  		end

  	def update
  		@studio = Studio.find(params[:id])
  		if @studio.update
  			redirect_to @studio, notice: 'studio updated'
  		else
  			redirect_to @studio, notice: 'cannot update'
  		end
  	end

  	def destroy
  		@studio = Studio.find(params[:id])
  		@studio.destroy
  		redirect_to @studio
  	end






end
