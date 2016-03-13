class My::CollectionsController < MyController
  def index
    @collections = current_user.collections
    render "my/collections/index"
  end
end
