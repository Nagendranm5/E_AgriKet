class SessionsController < ApplicationController

	before_action :check_user_signed_in, only: [:create]

	def new
	end

	def create
		user = User.find_by_email(params[:email])
		if user && user.authenticate(params[:password]) && (user.active == true)
			session[:user_id] = user.id
			redirect_to users_path
		else
			respond_to do |format|
				format.html {
					render :new
				}
			end
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to signin_path
	end

	def check_user_signed_in
		if current_user.present?
			redirect_to root_url
		end
	end
end
