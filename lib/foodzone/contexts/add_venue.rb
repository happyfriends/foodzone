module Foodzone
  module Contexts
    class AddVenue
      def self.call(venue_name:, venue_repository:)
        new(venue_name, venue_repository).call
      end

      def initialize(venue_name, venue_repository)
        @venue_name = venue_name
        @venue_repository = venue_repository
      end

      def call
        venue_repository.add_venue(venue_name)
      end

      private

      attr_reader :venue_name, :venue_repository
    end
  end
end
