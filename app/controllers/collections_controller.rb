class CollectionsController < ActionController::Base

  def create
    @collection = Collection.new
  end

  def show
    @collection = Collection.all
  end
end
