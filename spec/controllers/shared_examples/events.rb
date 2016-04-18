shared_examples 'all events on index' do |model|
  context 'index' do
    let(:model_name) { described_class.name.chomp('sController').underscore.to_sym }
    let(:collection) { (model_name.to_s << 's').to_sym }

    before { 29.times { create(model_name) } }

    it 'gets all events if less then pagination default' do
      get :index
      expect(assigns(collection).count).to eql 25
    end

    it 'paginates thru all events if more than kaminari default 25' do
      get :index, page: 2
      expect(assigns(collection).count).to eql 4
    end
  end
end
