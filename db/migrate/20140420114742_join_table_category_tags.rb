class JoinTableCategoryTags < ActiveRecord::Migration
  def change
    create_table :categories_tags, :id => false do |t|
      t.integer :category_id
      t.integer :tag_id
    end
  end
end
