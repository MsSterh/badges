class CollectionsController < ActionController::Base

  def create
    @collection = Collections.new
  end

  def show
    @collection = Collections.all
  end
end
