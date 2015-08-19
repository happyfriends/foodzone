module Venues
  class AddBranch
    def self.execute(venue:, branch_attrs:)
      new(venue, branch_attrs).execute
    end

    def initialize(venue, branch_attrs)
      @venue = venue
      @branch_attrs = branch_attrs
    end

    def execute
      venue.add_branch(branch_attrs)
    end

    private

    attr_reader :venue, :branch_attrs
  end
end
