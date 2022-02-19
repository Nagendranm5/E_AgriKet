class UsersController < ApplicationController
	before_action :check_user, only: [:users_list, :edit, :update, :delete_user]

	def users_list
		@users = User.all.order(id: :asc)
	end

	def check_user
		unless current_user.present?
			redirect_to signin_path
		end
	end

	def signup
		@user = User.new
	end

	def create
		@user = User.create(users_params)
		if @user.save
			@user.update(active: true)
			redirect_to users_list_path
		else
			redirect_back(fallback_location: root_path)
		end
	end

	def edit
		@user = User.find_by_id(params[:id])
	end

	def show
	end

	def update
		@user = User.find_by_id(params[:id])
		@user.update!(users_params)
		redirect_to users_list_path
	end

	def delete_user
		@user = User.find_by_id(params[:format])
		@user.destroy
		redirect_back(fallback_location: root_path)
	end

	private
	def users_params
		params.require(:user).permit(:firstname, :lastname, :username, :email, :mobile, :phone, :whatsapp, :role, :active, :country, :state, :district, :city, :address, :pincode, :gender, :password, :password_confirmation)
	end
end
