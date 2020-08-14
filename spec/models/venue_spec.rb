require "rails_helper"

RSpec.describe Venue, type: :model do
  describe ".save_venue" do
    let(:name) { "burguer shop" }

    it "creates a new venue" do
      expect do
        Venue.save_venue(name)
      end.to change(Venue, :count).by 1
    end
  end

  describe "#add_branch" do
    let(:venue) { FactoryGirl.create :venue }
    let(:branch_attrs) { FactoryGirl.attributes_for :branch }

    it "creates a new branch for the current venue" do
      expect do
        venue.add_branch(branch_attrs)
      end.to change { venue.branches.count }.by 1
    end
  end
end
