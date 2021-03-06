class Pin < ApplicationRecord
  acts_as_votable
  belongs_to :user
  has_many :comments, dependent: :destroy

  has_attached_file :image, styles: { large: "600x600", medium: "400x400" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
