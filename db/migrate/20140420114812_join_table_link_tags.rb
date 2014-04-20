class JoinTableLinkTags < ActiveRecord::Migration
  def change
    create_table :links_tags, :id => false do |t|
      t.integer :tag_id
      t.integer :link_id
    end
  end
end
