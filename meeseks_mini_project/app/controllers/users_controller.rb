class UsersController < ApplicationController
	skip_before_filter :verify_authenticity_token, :only => :create
	before_action :set_user, only: [:show, :edit, :update, :destroy]
	respond_to :json, :html, :js
	helper_method :yelp_search
	@@search_results = nil

	def index
		p '--------------------'
		p 'USER INDEX WORKING'
		p '--------------------'

		@users = User.all
	end

	def show
	end

	def new
		# @search = Search.new
	end

	def create

	end

	def edit
		@search = Search.find(params[:id])
	end



	def yelpsearch
			flash[:notice] = 'Yelp search hit'
			@search = params[:yelp_search]
			p "THIS IS THE SEARCH RETURN >>>>>", @search
			search_results = Yelp.client.search(@search, { term: 'bar', sort: 2})
			@search_results = search_results.businesses
			p @search_results
			respond_to do |format|
				format.js {render nothing: true}
				format.html { render partial: "results"} 
				format.json {render :json => @search_results}
			end			
	end

	def add_search
		search = Search.create("bar_name" => params[:bar_name], "rating" => params[:rating], "review" => params[:review], "user_id" => params[:user_id])

		if search.save
			redirect_to root_path
		else
			redirect_to root_path
		end
		p search
		
	end

	private

	def set_user
		@user = User.find(params[:id])
		@friends = @user.friends
		@searches = @user.searches
		@search_results
		# respond_with @user, @friends, @searches
	end

	# def search_params
	# 	params.require(:searches).permit(:bar_name, :rating, :review, :user_id)
	# end

end