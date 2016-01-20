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

  has_many :friends
  #has_many :requested_friends, :through => :friendships, :source => :friend, :conditions => "status = 'requested'", :order => :created_at
  #has_many :pending_friends, :through => :friendships, :source => :friend, :conditions => "status = 'pending'", :order => :created_at
  #has_many :friendships, :dependent => :destroy

  def complited_collections
    user_collections.reduce([]){|arr, uc| arr << uc.collection if uc.complited; arr }
  end

  def collections
    user_collections.reduce([]){|arr, uc| arr << uc.collection if !uc.complited; arr }
  end

  def avatar_url
    avatar.present? ? avatar : gravatar_url
  end
end
