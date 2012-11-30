class UsersController < ApplicationController
 
			def create
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									@user = User.create(params[:user])
			end

			def edit
			@user=current_user 
			if @user.save
			@user = User.find(params[:user])
			end
      end
      
			def index
			@user=current_user 	
			if current_user.is_admin?
			redirect_to "/users/company_info_general"
			flash[:notice] = 'Welcome Admin'
			end
			end

			def update
			@user = current_user
			if @user.update_attributes(params[:user])
			redirect_to "/users"
			else
			render "edit"
			end
			end


			def company_info_general
			@pending_leaves=Userleave.where(:status=>'pending')
			end

			def show_user
			@user = User.all
			end

			def salary_structure
			@user=User.find(current_user.id)
			#@payroll=Payroll.find(:basic,:conditions => {:current_user => true})
			# @payroll=Payroll.find(params[:payroll][:basic])
			end
#if !current_user || current_user.id != @usider.id
# flash[:notice] = 'You do not have access to that page'
#redirect_to(:controller => 'home', :action => 'index')
#end
#else
#  flash[:notice] = 'You do not have access to that page'
# redirect_to(:controller => 'home', :action => 'index')
#end
#end

      end
