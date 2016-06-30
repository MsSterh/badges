module FriendHelper
  def status(friendable_id, friend_id)
    friendship = Friendship.find_by_friendable_id_and_friend_id(friendable_id, friend_id)
    friendship.present? ? friendship.status.humanize : nil
  end
end
