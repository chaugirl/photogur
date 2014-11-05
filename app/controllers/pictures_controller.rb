class PicturesController < ApplicationController  ## ApplicationController is a class given to us by rails
  def index
    @pictures = Picture.all
  end

  def show	#created route in routes.rb, now we need to define action in controller -> pictures_controller.rb
  	@picture = Picture.find(params[:id])
  end

  def new
    @picture = Picture.new
  end

  def create
  	# render :text => "Saving a picture. URL: #{params[:url]}, Title: #{params[:title]}, Artist: #{params[:artist]}"	
    # make a new picture with what picture_params returns
    @picture = Picture.new(picture_params)
    if @picture.save
      # if the save for th picture was successful, go to index.html
      redirect_to pictures_url
    else
      # otherwise render the view associated with the action :new (i.e. new.html.erb)
      render :new
    end
  end

  private
  def picture_params
    params.require(:picture).permit(:artist, :title, :url)
  end
end
