require 'rails_helper'

RSpec.describe Seminar, type: :model do
  it 'has a valid factory' do
    expect(create(:seminar)).to be_valid
  end

  it_behaves_like "contact person"
end
