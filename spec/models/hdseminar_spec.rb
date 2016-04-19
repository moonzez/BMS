require 'rails_helper'

RSpec.describe Hdseminar, type: :model do
  it 'has a valid factory' do
    expect(create(:hdseminar)).to be_valid
  end

  it_behaves_like "contact person"
end
