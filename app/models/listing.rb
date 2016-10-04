class Listing < ActiveRecord::Base
  has_attached_file :image, :styles => {
  :medium => "200x200>",
  :small => "150x150#",
  :thumb => "50x50",
  
  },
  :default_url => "No_Image.jpg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  validates_uniqueness_of   :name, :description, :price
  validates :name, :description, :price, presence: true
  validates :price, numericality: { greater_than: 0}
  
  validates_attachment_presence :image
  
  belongs_to :user
end
