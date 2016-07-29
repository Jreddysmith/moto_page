class AddAttachmentPictureToGarages < ActiveRecord::Migration
  def self.up
    change_table :garages do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :garages, :picture
  end
end
