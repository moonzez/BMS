require 'rails_helper'

RSpec.describe GuidedtoursController, type: :controller do
  context 'index' do
    it 'gets all guidedtours' do
      4.times { create :guidedtour }
      get :index
      expect(assigns(:guidedtours).count).to eql 4
    end
  end
end
