class ItemsController < ActionController::Base
  layout "application"

  def index
    find_collection
    @items = Item.where(collection_id: params[:collection_id])
    redirect_to collection_url(params[:collection_id])
  end

  def show
  end

  def new
    find_collection
    @item = Item.new
  end

  def create
    @item = Item.create(item_params.merge(collection_id: params[:collection_id]))

    if @item.save
      redirect_to collection_items_url(params[:collection_id]), notice: "Successfully saved: \"#{ @item.title }\""
    else
      render :new, alert: "Something wrong. Try again."
    end
  end

  def edit
    find_collection
    find_item
  end

  def update
    find_collection
    find_item

    if @item.update(item_params)
      redirect_to collection_url(@collection), notice: "Successfully updated: \"#{ @item.title }\""
    else
      render :edit, alert: "Something wrong. Try again."
    end
  end

  def destroy
    find_collection
    find_item
    @item.destroy
    redirect_to collection_url(@collection), notice: "Removed: \"#{ @item.title }\""
  end

  private

  def find_item
    @item = Item.find(params[:id])
  end

  def find_collection
    @collection = Collection.find(params[:collection_id])
  end

  def item_params
    params.require(:item).permit(:title, :image, :collection_id)
  end

end
