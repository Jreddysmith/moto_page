class AddColumnToTraining < ActiveRecord::Migration
  def change
  	add_column :trainings, :vote, :interger, :default => 0
  end
end
