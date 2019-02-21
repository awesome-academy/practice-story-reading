class Chapter < ApplicationRecord
  belongs_to :story_id

  has_many :comments, as: :commentable
end
