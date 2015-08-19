module Venues
  class Finder
    def self.find(repository:,term:)
      new(repository, term).find
    end

    def initialize(repository, term)
      @repository = repository
      @term = term
    end

    def find
      repository.find_by_name(term)
    end

    private

    attr_reader :repository, :term

  end
end
