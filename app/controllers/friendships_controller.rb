class FriendshipsController < ApplicationController
  layout "application"

  def create
    friend = User.find params[:user_id]
    current_user.friend_request(friend)
    redirect_to users_url
  end

end
