class Author < ActiveRecord::Base
  validates :username, :email, :password, presence: true
  validates :username, length: {in: 4..12}, uniqueness: true
  validates :email, uniqueness: true
  validates :password, length: { in: 6..16}
  has_many :posts
end
