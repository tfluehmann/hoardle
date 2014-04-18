class Link < ActiveRecord::Base
  belongs_to :category
  validates :link, presence: true
  
end
