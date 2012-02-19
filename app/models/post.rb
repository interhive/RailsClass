class Post < ActiveRecord::Base
  validates :title,   :presence => true
  validates :url,     :presence => true
  validates :user_id, :presence => true

  belongs_to :user
  has_many   :comments, :dependent => :delete_all
end
