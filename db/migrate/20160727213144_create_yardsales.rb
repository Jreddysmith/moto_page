class CreateYardsales < ActiveRecord::Migration
  def change
    create_table :yardsales do |t|
      t.string :title
      t.string :city
      t.string :state
      t.text :content
      t.references :user, index: true

      t.timestamps
    end
  end
end
