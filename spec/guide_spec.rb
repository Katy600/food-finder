require 'guide'

describe 'Guide' do
  it 'is able to have access to a list of restaurants' do
    guide = Guide.new
    expect(guide.restaurants).to eq nil
  end
end
