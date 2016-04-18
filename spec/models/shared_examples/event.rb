shared_examples "contact person" do |model|
  it 'return contact person name' do
    event = create(described_class.name.underscore.to_sym, firstname: 'John', lastname: 'Doe')
    expect(event.contact_person).to eql 'John Doe'
  end
end
