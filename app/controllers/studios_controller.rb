class StudiosController < ApplicationController
  
	
	def index
		@studios = Studio.all
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
  			@studio = Studio.new(params.require(:studio).permit(:studio_num, :time_booked_start, :time_booked_end))

  			if @studio.save
  				redirect_to studios_path, notice: 'studio booked'
  			else
  			  render :new
  			end
  		end


  		def update
  		@studio = Studio.find(params[:id])
  		if @studio.update
  			redirect_to studio_index_path, notice: 'studio booking updated'
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
