class AddAttachmentPictureToYardsales < ActiveRecord::Migration
  def self.up
    change_table :yardsales do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :yardsales, :picture
  end
end
