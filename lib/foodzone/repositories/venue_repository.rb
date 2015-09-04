module Foodzone
  module Repositories
    class VenueRepository
      include Lotus::Repository

      def self.add_venue(name)
        create(Entities::Venue.new(name: name))
      end

      def self.find_by_name(name)
        query do
          where(name: name)
        end.first
      end
    end
  end
end
