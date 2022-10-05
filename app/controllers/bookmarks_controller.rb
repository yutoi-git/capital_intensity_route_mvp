class BookmarksController < ApplicationController
  def create
    @bookmark = current_user.bookmarks.create(station_code: params[:station_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @station = Station.find_by(station_code: params[:station_code])
    @bookmark = current_user.bookmarks.find_by(station_code: params[:station_id])
    @bookmark.destroy
    redirect_back(fallback_location: root_path)
  end
end
