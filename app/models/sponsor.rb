class Sponsor < ActiveRecord::Base
  belongs_to :user
  has_attached_file :picture
  validates_attachment_content_type :picture, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  validates :content, presence: true, length: { in: 3..10000 }
  validates :title,:name, :user_id, presence: true, length: { in: 1..255 }
end
