class CreateSponsors < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
      t.string :title
      t.string :name
      t.text :content
      t.references :user, index: true

      t.timestamps
    end
  end
end
