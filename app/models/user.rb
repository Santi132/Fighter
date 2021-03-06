class User < ApplicationRecord
  validates :image, presence: true
  has_attached_file :image, styles: {:medium => "320"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
