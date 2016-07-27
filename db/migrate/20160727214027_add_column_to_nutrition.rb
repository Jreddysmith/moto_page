class AddColumnToNutrition < ActiveRecord::Migration
  def change
  	add_column :nutritions, :vote, :interger, :default => 0
  end
end
