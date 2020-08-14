module Venues
  class Address
    def self.from_str(address)
      street, number, hood = address.split(',')
        .map { |val| val.gsub(/^\s+|\s+$/,'') }

      new(street, number, hood)
    end

    attr_reader :street, :number, :hood
    def initialize(street, number, hood)
      @street = street
      @number = number
      @hood = hood
    end

    def to_s
      [street, number, hood].join(', ')
    end
  end
end
