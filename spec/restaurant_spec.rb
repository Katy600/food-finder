require 'restaurant'

describe Restaurant do

  it 'responds to self.file exists' do
    allow(Restaurant).to receive(:file_exists?)
    Restaurant.file_exists?
    expect(Restaurant).to have_received(:file_exists?)
  end

end
