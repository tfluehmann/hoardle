class JoinTableCategoryLink < ActiveRecord::Migration
  def change
    create_table :categories_links, :id => false do |t|
      t.integer :category_id
      t.integer :link_id
    end
  end
end
