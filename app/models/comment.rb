class Comment < ApplicationRecord
  belongs_to :blog
  belongs_to :user
  validates :content, presence: true, length: {minimum: 5, maximimum: 1000 }
end
