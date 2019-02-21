class Story < ApplicationRecord
  belongs_to :user_id

  has_many :comments, as: :commentable
  has_many :chapters
  has_many :story_categories
  has_many :likeds
end
