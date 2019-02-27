class Chapter < ApplicationRecord
  belongs_to :story

  has_many :comments, as: :commentable

  scope :by_story, ->{where story_id: ids}
end
