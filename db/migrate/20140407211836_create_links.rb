class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.text :link
      t.integer :category_id

      t.timestamps
    end
  end
end
