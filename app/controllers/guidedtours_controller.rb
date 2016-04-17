class GuidedtoursController < ApplicationController
  def index
    @guidedtours = Guidedtour.all
  end
end
