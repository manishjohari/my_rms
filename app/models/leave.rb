class Leave < ActiveRecord::Base
  attr_accessible :leave_type, :leave_entitled
  #validates_presence_of :leave_entitled
  has_many :userleaves
end
