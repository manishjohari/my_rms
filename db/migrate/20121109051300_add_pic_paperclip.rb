class AddPicPaperclip < ActiveRecord::Migration
  def up
   
      add_column :users, :pic_file_name,    :string
      add_column :users, :pic_content_type, :string
      add_column :users, :pic_file_size,    :integer
      add_column :users, :pic_updated_at,   :datetime
 
  
  end

  def down
  end
end
