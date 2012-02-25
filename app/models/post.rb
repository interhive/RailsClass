class Post < ActiveRecord::Base
  validates :title,
            :url,
            :user_id,
            :presence => true

  belongs_to :user
  has_many   :comments, :dependent => :delete_all

  accepts_nested_attributes_for :comments
end
