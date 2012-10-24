class Shop < ActiveRecord::Base
  attr_accessible :description, :line_summary, :name, :image, :image_cache
  mount_uploader :image, ShopImageUploader 

  validates_presence_of :name, :description, :line_summary
  validates_uniqueness_of :name
end
