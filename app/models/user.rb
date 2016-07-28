class User < ActiveRecord::Base
  has_secure_password
  has_many :training_votes
  has_many :nutrition_votes
  has_many :events
  has_many :flashbacks
  has_many :garages
  has_many :nutrition
  has_many :sponsors
  has_many :toytracks
  has_many :trainings
  has_many :yardsales
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :first_name, :last_name, :state, presence: true, length: { in: 2..20 }
  validates :password, length: { in: 8..50 }
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
end
