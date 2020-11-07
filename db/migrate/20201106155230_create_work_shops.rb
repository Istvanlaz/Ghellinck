class CreateWorkShops < ActiveRecord::Migration[5.2]
  def change
    create_table :work_shops do |t|

      t.timestamps
    end
  end
end
