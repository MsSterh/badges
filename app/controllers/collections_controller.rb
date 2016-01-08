class CollectionsController < ActionController::Base
  layout "application"

  def index
    @collections = Collection.all
  end

  def show
    find_collection
  end

  def new
    @collection = Collection.new
  end

  def create
    @collection = Collection.create(collection_params)

    if @collection.save
      redirect_to collections_url, notice: "Successfully saved: \"#{ @collection.title }\""
    else
      render :new, alert: "Something wrong. Try again."
    end
  end

  def edit
    find_collection
  end

  def update
    find_collection

    if @collection.update(collection_params)
      redirect_to collection_url, notice: "Successfully updated: \"#{ @collection.title }\""
    else
      render :edit, alert: "Something wrong. Try again."
    end
  end

  def destroy
    find_collection
    @collection.destroy
    redirect_to collections_url, notice: "Removed: \"#{ @collection.title }\""
  end

  private

  def find_collection
    @collection = Collection.find(params[:id])
  end

  def collection_params
    params.require(:collection).permit(:title)
  end

end
