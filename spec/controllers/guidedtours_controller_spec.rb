require 'rails_helper'

RSpec.describe GuidedtoursController, type: :controller do
  context 'index' do
    before { 29.times { create :guidedtour } }

    it 'gets all guidedtours if less then pagination default' do
      get :index
      expect(assigns(:guidedtours).count).to eql 25
    end

    it 'paginates thru tours if more than kaminari default 25' do
      get :index, page: 2
      expect(assigns(:guidedtours).count).to eql 4
    end
  end
end
