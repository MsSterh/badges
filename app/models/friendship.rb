class Friendship < ActiveRecord::Base
  belongs_to :friend

  def create(friend)
    current_user.friend_request(friend)
  end
end
