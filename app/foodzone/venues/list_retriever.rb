module Venues
  class ListRetriever
    def self.execute(venue_repository:)
      new(venue_repository).execute
    end

    def initialize(venue_repository)
      @venue_repository = venue_repository
    end

    def execute
      List.new(venue_repository.all)
    end

    class List
      EMPTY_MSG = "There are no venues covering that address"

      def initialize(venues)
        @venues = venues
      end

      def message
        EMPTY_MSG if venues.empty?
      end

      def to_a
        @rows ||= venues.map do |venue|
          venue.branches.inject({}) do |hash, branch|
            Row.new(venue.name, branch)
          end
        end
      end

      def [](index)
        to_a[index]
      end

      class Row
        def initialize(venue_name, branch)
          @venue_name = venue_name
          @branch = branch
        end

        def to_h
          {
            name: venue_name,
            address: branch.address.to_s,
            telephone: branch.telephone
          }
        end

        private

        attr_reader :venue_name, :branch
      end

      private

      attr_reader :venues
    end

    private

    attr_reader :venue_repository
  end
end
