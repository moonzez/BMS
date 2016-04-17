require 'rails_helper'

RSpec.describe Guidedtour, type: :model do
  it 'has a valid factory' do
    expect(create(:guidedtour)).to be_valid
  end

  it 'return contact person name' do
    tour = create(:guidedtour, firstname: 'John', lastname: 'Doe')
    expect(tour.contact_person).to eql 'John Doe'
  end
end
