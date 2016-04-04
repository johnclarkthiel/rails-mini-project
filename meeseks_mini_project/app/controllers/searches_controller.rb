class UsersController < ApplicationController

	def index

	end

	def show

	end

	def new
		# search = Search.new
	end

	def create
		search = Search.create(:bar_name, :rating, :review, :user_id)

		if search.save
			redirect_to root_path
		else
			redirect_to root_path
		end
		p search
	end

	def edit
	end

	def update
	end

	def destroy
	end

	def yelpsearch

	end

	private 

	def search_params
		params.require(:search).permit(:bar_name, :rating, :review, :user_id)
	end


end