module Venues
  class ListRetriever
    def self.execute
      new.execute
    end

    def execute
      List.new([])
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
        venues
      end

      private

      attr_reader :venues
    end
  end
end
