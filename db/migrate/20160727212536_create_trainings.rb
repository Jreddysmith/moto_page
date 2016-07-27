class CreateTrainings < ActiveRecord::Migration
  def change
    create_table :trainings do |t|
      t.string :title
      t.text :content
      t.references :user, index: true

      t.timestamps
    end
  end
end
