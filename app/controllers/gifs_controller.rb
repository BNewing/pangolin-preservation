class GifsController < ApplicationController
	def index 
		@gifs = Gif.all
	end

	def show
		@gif = Gif.find(params[:id])
	end	

	def new
		@article = Gif.new
	end

	def edit
		@gif = Gif.find(params[:id])
	end

	def create
		@gif = Gif.new(gif_params)

		if @gif.save
			redirect_to @gif
		else 
			render 'new'
		end
	end

	def update
		@gif = Gif.find(params[:id])

		if @gif.update(gif_params)
			redirect_to @gif
		else
			render 'edit'
		end
	end

	private
		def gif_params
			params.require(:gif).permit(:description, :url)
		end
end
