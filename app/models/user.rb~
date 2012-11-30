class User < ActiveRecord::Base 
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
 has_many :userleaves
  # Setup accessible (or protected) attri
     
        attr_accessible :email, :password, :password_confirmation, :remember_me,:first_name, :last_name, :dob,:pic, :sex, :current_address, :permanent_address, :educational_qualification, :date_of_joining, :date_of_leaving, :designation, :marital_status, :contact_number,:annual_salary
  
  has_attached_file :pic,:default_url => '/assets/UserDefault.png', :styles =>  {:medium => "300x300>", :thumb => "100x100>" }
  
  #if current_user.admin?
  
  def is_admin?
   self.is_admin
  end
 
  def self.assign_password
    o =  [('a'..'z'),(0..9)].map{|i| i.to_a}.flatten
		pass  =  (0...10).map{ o[rand(o.length)] }.join
		# pass =  rand_password=('1'..'z').to_a.shuffle.first(8).join
		# pass = (0...50).map{ ('a'..'z').to_a[rand(9)] }.join
		return pass
	end
  
  
  
  
end
