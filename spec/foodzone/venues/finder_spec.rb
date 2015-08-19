require_relative '../../../app/foodzone/venues/finder'

describe Venues::Finder do
  let(:finder) { described_class }
  let(:venue_repository) { double :venue_repository }

  describe '::find' do
    context 'when passing a name' do
      let(:venue_name) { 'my_venue' }
      it 'returns the venue by name' do
        expect(venue_repository).to receive(:find_by_name).with(venue_name)
        finder.find(repository: venue_repository, term: venue_name)
      end
    end
  end
end
