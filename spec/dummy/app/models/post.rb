class Post < ActiveRecord::Base
  has_many :comments
  has_one :category
  belongs_to :author

  validates :title, :presence => true
end
