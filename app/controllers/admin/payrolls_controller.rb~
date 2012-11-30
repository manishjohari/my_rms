class Admin::PayrollsController < ApplicationController



			def new
			@payroll=Payroll.new
		 # render :json=>@payroll
			end

			def edit
			end

			def show
			end

			def create
		  	@payroll=Payroll.create(params[:payroll])
				if @payroll.save
					redirect_to new_admin_payroll_path :notice=> "sucessfully save"
				else
					render 'new'
				end
      end
     
			end
