class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  include Gravtastic
  gravtastic

  mount_uploader :avatar, AvatarUploader

  has_many :user_collections
  has_many :collections, through: :user_collections
  has_many :user_items
  has_many :items, through: :user_items

end
