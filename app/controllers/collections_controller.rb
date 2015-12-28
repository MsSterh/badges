class CollectionsController < ActionController::Base

  def create
    @service = AddFromWeb::Service.new(params[:url])
    listing = @service.create_listing(@folio, @account)

    if listing.errors.empty?
      @folio.progress!(:listing_added)
      @listing = FolioItemDecorator.new(listing)
      @listing.created_by_current_user = true
      render json: {
        success:   render_to_string(partial: 'add_listing', layout: false),
        listingId: listing.id
      }
    else
      render :json => { :error => listing.errors.full_messages }
    end
  end
end
