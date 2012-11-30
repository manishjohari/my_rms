class Payroll < ActiveRecord::Base
   attr_accessible :basic, :hra,:conveyance,:medical,:advance_monthly_preferential_bonus,:total_salary,:tds, :pf_contributions,:total_deductions,:net_salary,:user_id	
  
validates_presence_of :basic, :hra, :conveyance,:medical,:advance_monthly_preferential_bonus
  
  
end
