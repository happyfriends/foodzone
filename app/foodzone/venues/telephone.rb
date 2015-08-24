module Venues
  class Telephone
    def self.from_str(telephone)
      new(telephone)
    end

    def initialize(telephone)
      @telephone = telephone
    end

    def to_s
      telephone
    end

    private

    attr_reader :telephone
  end
end
