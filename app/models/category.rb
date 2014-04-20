class Category < ActiveRecord::Base
  has_and_belongs_to_many :links
  has_and_belongs_to_many :tags
  belongs_to :user, foreign_key: :owner_id
  validates :name, :user, presence: true
end
