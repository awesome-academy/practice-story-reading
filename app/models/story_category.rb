class StoryCategory < ApplicationRecord
  belongs_to :category_id
  belongs_to :story_id

  has_many :categories
  has_many :stories
end
