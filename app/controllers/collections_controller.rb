class CollectionsController < ActionController::Base

  def index
    @collections = Collection.all
  end

  def show
    @collection = Collection.find(params[:id])
  end

  def new
    @collection = Collection.new
  end

  def create
    @collection = Collection.create(collection_params)

    if @collection.save
      redirect_to collections_url
    else
      render :new
    end
  end

  def edit
    @collection = Collection.find(params[:id])
  end

  def update
    @collection = Collection.find(params[:id])

    if @collection.update(collection_params)
      redirect_to collection_url
    else
      render :edit
    end
  end

  private

  def collection_params
    params.require(:collection).permit(:title)
  end

end
