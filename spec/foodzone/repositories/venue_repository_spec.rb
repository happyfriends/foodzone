require "foodzone"

describe Foodzone::Repositories::VenueRepository do
  subject(:venue_repository) { described_class }
  let(:venue_name) { "Burguer Joint" }

  describe ".add_venue" do
    it "creates a new venue based on name" do
      expect {
        venue_repository.add_venue(venue_name)
      }.to change { venue_repository.all.size }.by 1
    end
  end

  describe ".find_by_name" do
    context "when a venue exist" do
      it "returns a venue by name" do
        venue_repository.add_venue(venue_name)

        expect(venue_repository.find_by_name(venue_name).name).to eql venue_name
      end
    end
  end
end
