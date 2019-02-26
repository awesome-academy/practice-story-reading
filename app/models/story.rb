class Story < ApplicationRecord
  belongs_to :users, class_name: User.ids, optional: true

  has_many :comments, as: :commentable
  has_many :chapters
  has_many :story_categories
  has_many :likeds
end
