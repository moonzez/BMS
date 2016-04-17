class GuidedtoursController < ApplicationController
  def index
    @guidedtours = Guidedtour.page(params[:page])
  end
end
