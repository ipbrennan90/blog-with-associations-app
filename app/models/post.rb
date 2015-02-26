class Post < ActiveRecord::Base
  validates :body, :author_id, presence: true
  belongs_to :author

end
