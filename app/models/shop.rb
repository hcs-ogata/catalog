class Shop < ActiveRecord::Base
  attr_accessible :description, :line_summary, :name, :image, :image_cache
  mount_uploader :image, ShopImageUploader 
end
