class DietVote < ActiveRecord::Base
  belongs_to :user
  belongs_to :nutrition
end
