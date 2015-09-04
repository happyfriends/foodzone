module Foodzone
  module Repositories
    class BranchRepository
      include Lotus::Repository

      def self.add_branch_for_venue(venue, branch_attributes)
        create(
          Entities::Branch.new(branch_attributes.merge!(venue_id: venue.id))
        )
      end
    end
  end
end
