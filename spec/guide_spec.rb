require 'guide'

describe 'Guide' do
  it 'is able to have access to a list of restaurants' do
    guide = Guide.new
    expect(guide.restaurants).to eq nil
  end

  it 'responds to launch' do
      guide = Guide.new
      expect(guide).to respond_to :launch!
  end

  it 'responds to introduction' do
      guide = Guide.new
      expect(guide).to respond_to :introduction
  end

  it 'responds to conclusion' do
      guide = Guide.new
      expect(guide).to respond_to :conclusion
  end
end
