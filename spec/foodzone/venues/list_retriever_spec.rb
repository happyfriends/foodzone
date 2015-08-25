require_relative "../../../app/foodzone/venues/list_retriever"
require_relative "../../../app/foodzone/venues/address"
require_relative "../../../app/foodzone/venues/telephone"

describe Venues::ListRetriever do
  let(:retriever) { described_class }
  let(:venue_repo) { double :venue_repo, all: venues }

  context "::execute" do
    context "for empty list of venues" do
      let(:venues) { [] }
      it "returns a empty list of venues" do
        expect(retriever.execute(venue_repository: venue_repo).to_a).to eql []
      end

      it "returns the proper message" do
        expect(retriever.execute(venue_repository: venue_repo).message).to
        eql "There are no venues covering that address"
      end
    end

    context "for some venues" do
      let(:branch) do
        double(
          :branch,
          address: Venues::Address.from_str("My place, #20, Hood").to_s,
          telephone: Venues::Telephone.from_str('').to_s
        )
      end
      let(:branches) { [branch] }
      let(:venue) { double :venue, name: "", branches: branches }
      let(:venues) { [venue] }

      it "returns the list of venues from the repository" do
        expect(venue_repo).to receive(:all)
        retriever.execute(venue_repository: venue_repo)
      end

      it "returns a list of venues" do
        expect(
          retriever.execute(venue_repository: venue_repo).to_a.map(&:to_h)
        ).to eql [{ name: "", address: "My place, #20, Hood", telephone: "" }]
      end
    end
  end
end
