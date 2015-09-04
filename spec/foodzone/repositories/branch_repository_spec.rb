require "foodzone"

describe Foodzone::Repositories::BranchRepository do
  subject(:branch_repository) { described_class }
  let(:venue_name) { "Burger Joint" }
  let(:branch_attributes) do
    {
      address: "Near my house #02, Hood, Country",
      telephone: "555-555-5555",
      delivery_zone: ""
    }
  end

  context ".add_branch_for_venue" do
    it "creates a new branch" do
      expect {
        branch_repository.add_branch_for_venue(venue, branch_attributes)
      }.to change { branch_repository.all.size }.by 1
    end

    it "creates a new venue" do
      expect {

      }
    end
  end
end
