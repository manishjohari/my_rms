class Userleave < ActiveRecord::Base
  attr_accessible :from_date,:to_date,:status,:comments,:from_time,:to_time,:user_id, :leave_id 
  belongs_to :user
  belongs_to :leave
  validates_presence_of :from_date, :to_date, :leave_id
  validates_presence_of :from_time, :to_time, :if => :date_value?
    
 
  def date_value?
  if (self.from_date != nil)||(self.to_date != nil)
   if (self.from_date == self.to_date)
   
     return true
   end
   return false
  end  
  else
   return false
  end
  
  def user_email(id)
   @user = User.find(id)
   return @user
  end
 
 
  
end


