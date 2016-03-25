class UsersController < ApplicationController
	before_action :set_user, only: [:show, :edit, :update, :destroy]

	def index
		p '--------------------'
		p 'USER INDEX WORKING'
		p '--------------------'

		@users = User.all
	end

	def show
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

	private

	def set_user
		@user = User.find(params[:id])
		@friends = @user.friends
		@searches = @user.searches
	end


end