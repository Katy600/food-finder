require 'restaurant'

describe Restaurant do

  it 'responds to self.file exists' do
    allow(Restaurant).to receive(:file_exists?)
    Restaurant.file_exists?
    expect(Restaurant).to have_received(:file_exists?)
  end

  it 'responds to self.creat_file' do
    allow(Restaurant).to receive(:create_file)
    Restaurant.create_file
    expect(Restaurant).to have_received(:create_file)
  end

end
