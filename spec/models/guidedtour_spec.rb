require 'rails_helper'

RSpec.describe Guidedtour, type: :model do
  it 'has a valid factory' do
    expect(create(:guidedtour)).to be_valid
  end

  it_behaves_like "contact person"
end
