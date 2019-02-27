class User < ApplicationRecord
  belongs_to :permission

  has_many :comments
  has_many :stories
  has_many :likeds

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :name, presence: true,
    length: {maximum: Settings.user_validates.name_max_length}
  validates :account, presence: true, uniqueness: {case_sensitive: false},
    length: {maximum: Settings.user_validates.account_max_length}
  validates :email, presence: true, uniqueness: {case_sensitive: false},
    length: {maximum: Settings.user_validates.email_max_length},
     format: {with: VALID_EMAIL_REGEX}
  validates :password, presence: true, allow_nil: true,
    length: {minimum: Settings.user_validates.password_min_length}

  before_save :downcase_email

  has_secure_password

  private

  def downcase_email
    email.downcase!
  end
end
