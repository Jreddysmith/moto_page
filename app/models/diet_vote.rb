class DietVote < ActiveRecord::Base
	# Not In USE
  belongs_to :user
  belongs_to :nutrition
end
