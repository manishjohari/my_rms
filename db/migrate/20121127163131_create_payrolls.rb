class CreatePayrolls < ActiveRecord::Migration
  def change
    create_table :payrolls do |t|
       t.float :basic
        t.float :hra
         t.float :conveyance
          t.float :medical
           t.float :advance_monthly_preferential_bonus
            t.float :total_salary
             t.float :tds
             	t.float :pf_contributions
             	 t.float :total_deductions
             	  t.float :monthly_salary
             	  t.references :user
      t.timestamps
    end
  end
end
