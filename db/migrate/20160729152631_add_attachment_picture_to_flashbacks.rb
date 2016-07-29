class AddAttachmentPictureToFlashbacks < ActiveRecord::Migration
  def self.up
    change_table :flashbacks do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :flashbacks, :picture
  end
end
