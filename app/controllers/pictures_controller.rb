class PicturesController < ApplicationController  ## ApplicationController is a class given to us by rails
	def index
		@pictures = [
			{
				:title => "The old church on the coast of White sea",
		        :artist => "Sergey Ershov",
		        :url    => "http://bitmakerlabs.s3.amazonaws.com/photogur/house.jpg"
		    },
		    {
		        :title  => "Sea Power",
		        :artist => "Stephen Scullion",
		        :url    => "http://bitmakerlabs.s3.amazonaws.com/photogur/wave.jpg"
		    },
		    {
		        :title  => "Into the Poppies",
		        :artist => "John Wilhelm",
		        :url    => "http://bitmakerlabs.s3.amazonaws.com/photogur/girl.jpg"
		    }
    	]
  	end
end
