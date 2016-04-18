class SeminarsController < ApplicationController
  def index
    @seminars = Seminar.page(params[:page])
  end
end
