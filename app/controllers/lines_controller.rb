class LinesController < ApplicationController
  def index
    #redirect_to "/11302"
  end

  def show
    @line = Line.all
    @params_line = Line.find(params[:line_code])
    @line_station = Station.joins(:lines_stations).where(lines_stations: { line_code: params[:line_code] }).order(order: :asc)
  end
end
