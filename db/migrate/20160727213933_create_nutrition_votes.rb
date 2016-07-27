class CreateNutritionVotes < ActiveRecord::Migration
  def change
    create_table :nutrition_votes do |t|
      t.references :user, index: true
      t.references :nutrition, index: true

      t.timestamps
    end
  end
end
