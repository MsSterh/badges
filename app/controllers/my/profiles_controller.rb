class My::ProfilesController < MyController
  def show
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to my_user_root_path, notice: "Successfully updated: \"#{ @user.email }\""
    else
      render :edit, alert: "Something wrong. Try again."
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :avatar)
  end
end
