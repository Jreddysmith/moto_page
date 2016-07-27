class CreateTrainingVotes < ActiveRecord::Migration
  def change
    create_table :training_votes do |t|
      t.references :user, index: true
      t.references :training, index: true

      t.timestamps
    end
  end
end
