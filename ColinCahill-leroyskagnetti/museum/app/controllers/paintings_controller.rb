class PaintingsController < ApplicationController
  def index
    @paintings = Painting.search(params[:q])
  end
end
