class Venue < ActiveRecord::Base
  has_many :branches

  def self.save_venue(name)
    create!(name: name)
  end

  def add_branch(branch_attrs)
    branches.create!(branch_attrs)
  end
end
