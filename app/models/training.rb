class Training < ActiveRecord::Base
  belongs_to :user
  has_many :training_votes
end
