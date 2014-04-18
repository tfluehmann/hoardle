class Category < ActiveRecord::Base
  has_many :links
  belongs_to :user, foreign_key: :owner_id
  validates :name, :user, presence: true
end
