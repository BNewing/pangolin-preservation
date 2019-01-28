class GifsController < ApplicationController
	def index 
		@gifs = Gif.all
	end

	def show
		@gif = Gif.find(params[:id])
	end	

	def new
	end

	def create
		@gif = Gif.new(gif_params)

		@gif.save
		redirect_to @gif
	end

	private
		def gif_params
			params.require(:gif).permit(:description, :url)
		end
end
