module Venues
  class Creator
    def self.execute(venue_repository:, venue_name:)
      new(venue_repository, venue_name).execute
    end

    def initialize(venue_repository, venue_name)
      @venue_repository = venue_repository
      @venue_name = venue_name
    end

    def execute
      venue_repository.save_venue(venue_name)
    end

    private

    attr_reader :venue_name, :venue_repository
  end
end
