class CreateUserleaves < ActiveRecord::Migration
  def change
    create_table :userleaves do |t|
      t.references :user
      t.references :leave
      t.datetime :from_date
      t.datetime :to_date
      t.string :status, :default=>'pending'
      t.string :comments
      t.time :from_time
      t.time :to_time
      t.timestamps
    end
  end
end
