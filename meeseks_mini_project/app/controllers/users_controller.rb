class UsersController < ApplicationController
	before_action :set_user, only: [:show, :edit, :update, :destroy]
	respond_to :json, :html, :js
	helper_method :yelp_search

	def index
		p '--------------------'
		p 'USER INDEX WORKING'
		p '--------------------'

		@users = User.all
	end

	def show
		@search_results = nil
	end

	def new
	end

	def create

	end

	def edit
	end

	def update
	end

	def destroy
	end

	def yelpsearch
		flash[:notice] = 'Yelp search hit'
		@search = params[:yelp_search]
		p "THIS IS THE SEARCH RETURN >>>>>", @search
		@search_results = Yelp.client.search(@search, { term: 'bar', sort: 2})
		p @search_results
		respond_to do |format|
			format.js {render nothing: true}
		end		

	end

	private

	def set_user
		@user = User.find(params[:id])
		@friends = @user.friends
		@searches = @user.searches
		# respond_with @user, @friends, @searches
	end


end