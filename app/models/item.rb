class Item < ActiveRecord::Base
  belongs_to :collection
  mount_uploader :image, ItemImageUploader
end
