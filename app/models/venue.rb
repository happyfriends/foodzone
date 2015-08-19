class Venue < ActiveRecord::Base
  def self.save_venue(name)
    create!(name: name)
  end
end
