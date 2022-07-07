class BookmarksController < ApplicationController
  def index
  @bookmarks = current_user.bookmarks
  end

  def create
    @bookmark.offer = Offer.find(params[:offer_id])
    @offer = @bookmark.offer
    @bookmark = Bookmark.create(user: current_user, offer: @offer)
  end

  def destroy
    @bookmark.destroy
  end
end
