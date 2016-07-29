class AddAttachmentPictureToNutritions < ActiveRecord::Migration
  def self.up
    change_table :nutritions do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :nutritions, :picture
  end
end
