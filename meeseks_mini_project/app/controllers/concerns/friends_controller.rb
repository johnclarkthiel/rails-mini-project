class FriendsController < ApplicationController


	def new
		@user_id = params[:user_id]

		@adding_friend = Friend.new
	end

	def create
		@friend = Friend.new(friend_params)

		if @friend.save
			redirect_to root_path
		end
	end

	def edit
		@friend = Friend.find(params[:id])
	end

	def update
		@friend = Friend.find(params[:id])

		if @friend.update(friend_params)
			redirect_to root_path
		end
	end

	def destroy
		@friend = Friend.find(params[:id])
		if @friend.destroy
			redirect_to root_path
		end
	end

	private

	def friend_params
		params.require(:friend).permit(:name, :email, :user_id)
	end


end