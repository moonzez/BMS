class HdseminarsController < ApplicationController
  def index
    @hdseminars = Hdseminar.page(params[:page])
  end
end
