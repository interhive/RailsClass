class User < ActiveRecord::Base
  validates :name,
            :email,
            :presence => true

  has_many  :posts
  has_many  :comments
end
