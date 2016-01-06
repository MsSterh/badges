class CollectionsController < ActionController::Base

  def index
    @collection = Collection.find(params[:id])
  end

  def show
    @collections = Collection.all
  end

  def new
    @collection = Collection.new
  end

  def create
    @collection = Collection.new
    @collection.title = params[:collection]["title"]

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

    if @collection.save
      redirect_to collections_url(params[:id])
    else
      render :edit
    end
  end

end
