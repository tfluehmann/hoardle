class Tag < ActiveRecord::Base
  has_and_belongs_to_many :categories, join_table: "categories_tags"
  has_and_belongs_to_many :links, join_table: "links_tags"
  validates :name, presence: true
  validates_uniqueness_of :name
end
