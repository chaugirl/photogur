class PicturesController < ApplicationController  ## ApplicationController is a class given to us by rails
	def index
		@pictures = Picture.all
  	end

  	def show	#created route in routes.rb, now we need to define action in controller -> pictures_controller.rb
  		@picture = Picture.find(params[:id])
  	end

  	def new
  		
  	end

  	def create
  		render :text => "Saving a picture. URL: #{params[:url]}, Title: #{params[:title]}, Artist: #{params[:artist]}"	
  	end
end
