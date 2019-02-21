class User < ApplicationRecord
  belongs_to :permission_id

  has_many :comments
  has_many :stories
  has_many :likeds
end
