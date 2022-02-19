class UsersController < ApplicationController
	def users_list
		@users = User.all.order(id: :asc)
	end

	def signup
		@user = User.new
	end

	def create
		@user = User.create(users_params)
		if @user.save
			render 'index'
		else
			render 'signup'
		end
	end

	def destroy
		@user = User.find_by(user.id)
		@user.destroy
		redirect_back
	end

	private
	def users_params
		params.require(:user).permit(:firstname, :lastname, :username, :email, :mobile, :phone, :whatsapp, :role, :active, :country, :state, :district, :city, :address, :pincode, :gender, :password, :password_confirmation)
	end
end
