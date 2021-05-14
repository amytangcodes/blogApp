class BlogPost < ApplicationRecord
  validates :titles, :body, presence: true
end
