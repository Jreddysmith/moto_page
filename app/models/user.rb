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
end
