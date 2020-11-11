class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :home_image, :string
    add_column :users, :home_description, :string
  end
end
