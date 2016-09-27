class Listing < ActiveRecord::Base
  has_attached_file :image, :styles => {
  :medium => "200x200>",
  :small => "150x150#",
  :thumb => "50x50",
  
  },
  :default_url => "No_Image.jpg",
  :default_style => :thumb
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
