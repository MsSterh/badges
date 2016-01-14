class Collection < ActiveRecord::Base
  has_many :items
  has_many :user_collections
end
