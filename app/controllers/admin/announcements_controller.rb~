class Admin::AnnouncementsController < ApplicationController

					def new
					@announcement=Announcement.new 
					end

					def show  

					end

					def create 
					@announcement=Announcement.create(params[:announcement])
					if @announcement.save
					 flash[:notice] = "Successfully sent to all."
					 @users=User.all
					 
					@users.each do |user|
						Emailer.welcome_announcement(@announcement,user).deliver
					end
					
				 redirect_to   admin_announcements_path,:notice=> "announcement sent successfully!!"
					else
					render "new"
					end
					end




					def index
					end





end
