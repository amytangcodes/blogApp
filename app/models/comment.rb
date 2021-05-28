class Comment < ApplicationRecord
  belongs_to :blog_post

  validates :user, :body, presence: true
end