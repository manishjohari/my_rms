class UserleavesController < ApplicationController
  def new
  	@userleave= Userleave.new
  end

  def edit
  end

  def show
  end

  def index
 
  end
  
  def create 
  	@userleave=Userleave.create(params[:userleave])
  	if @userleave.save
  	 @user = User.find(:first,:conditions => {:is_admin => true})
  	 Emailer.welcome_email(@userleave,@user).deliver
   	  redirect_to  userleaves_path
  	else
  		render "new"
  	end
  end
  
  
  
   def myleave
  	#@userleave= Userleave.find_by_user_id(current_user.id)
  	 @userleave=Userleave.find(:all,:conditions=>{:user_id=>current_user.id})
   end

  
  
  
end
