class AddAttachmentPictureToToytracks < ActiveRecord::Migration
  def self.up
    change_table :toytracks do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :toytracks, :picture
  end
end
