require_relative '../../../app/foodzone/venues/add_branch'

describe Venues::AddBranch do
  let(:add_branch) { described_class }
  let(:venue) { double :venue }
  let(:branch_attrs) { {} }

  describe '#execute' do
    it 'add a branch to an existing venue' do
      expect(venue).to receive(:add_branch).with(branch_attrs)
      add_branch.execute(venue: venue, branch_attrs: branch_attrs)
    end
  end
end
