class Nutrition < ActiveRecord::Base
  belongs_to :user
  has_many :nutrition_votes
end
