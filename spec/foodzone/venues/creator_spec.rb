require_relative "../../../app/foodzone/venues/creator"

describe Venues::Creator do
  let(:creator) { described_class }
  let(:venue_repository) { double :venue_repository }

  describe "::execute" do
    let(:name) { "The Burguer Shop" }
    it 'creates a new venue' do
      expect(venue_repository).to receive(:save_venue).with(name)
      creator.execute(venue_repository: venue_repository, venue_name: name)
    end
  end
end
