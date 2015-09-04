module Foodzone
  module Entities
    class Branch
      include Lotus::Entity
      attributes :address, :telephone, :delivery_zone, :venue_id
    end
  end
end
