class ItemsController < ActionController::Base
  layout "application"

  def index
    @items = Items.all
  end

  def show
  end

  def new
    @collection = Collection.find(params[:collection_id])
    @item = Item.new
  end

  def create
    @item = Item.create(item_params)

    if @item.save
      redirect_to collections_url, notice: 'Successfully saved: "#{@collection.title}"'
    else
      render :new, alert: "Something wrong. Try again."
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
  end

  private

  def item_params
    params.require(:item).permit(:title, :image)
  end

end
