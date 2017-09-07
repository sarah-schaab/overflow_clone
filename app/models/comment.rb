class Comment < ApplicationRecord
  validates :statement, presence: true

  belongs_to :user
  belongs_to :commentable, polymorphic: true
end
