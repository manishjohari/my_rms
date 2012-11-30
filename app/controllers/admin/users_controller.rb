class Admin::UsersController < ApplicationController
	def new
		@user=User.new
	end

	def edit
	end

	def show
	end

	def create
		params[:user][:password]=User.assign_password
		@user=User.create(params[:user])
		 if @user.save
	 		 Emailer.invitation_user(@user,@user.email,params[:user][:password]).deliver
	 		 redirect_to "/users/show_user"
		else
			render 'new'
		end
	end
  
end
