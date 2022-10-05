class StationsController < ApplicationController
  def index
    @line = Line.all
    @params_line = Line.find(params[:code])
    @line_station = Station.joins(:lines_stations).where(lines_stations: { line_code: params[:code] }).order(order: :asc)
  end

  def bookmark
    @line = Line.all
    @bookmark_station = Station.joins(:bookmarks).where(bookmarks: { user_id: current_user.id }).order(id: :asc)
  end
end
