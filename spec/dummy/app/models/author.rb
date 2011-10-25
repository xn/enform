class Author < ActiveRecord::Base
  has_many :posts
  has_many :tag_lines
end
