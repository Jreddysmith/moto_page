class AddAttachmentPictureToTrainings < ActiveRecord::Migration
  def self.up
    change_table :trainings do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :trainings, :picture
  end
end
