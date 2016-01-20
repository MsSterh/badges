class Item < ActiveRecord::Base
  belongs_to :collection
  has_many :user_items

  mount_uploader :image, ItemImageUploader

  def count(user)
    user_items.where(user_id: user.id).last.count
  end
end
