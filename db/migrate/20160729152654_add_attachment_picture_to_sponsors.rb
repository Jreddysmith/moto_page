class AddAttachmentPictureToSponsors < ActiveRecord::Migration
  def self.up
    change_table :sponsors do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :sponsors, :picture
  end
end
