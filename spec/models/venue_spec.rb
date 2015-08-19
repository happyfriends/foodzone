require 'rails_helper'

RSpec.describe Venue, type: :model do
  describe '.save_venue' do
    let(:name) { 'burguer shop' }

    it 'creates a new venue' do
      expect {
        Venue.save_venue(name)
      }.to change(Venue, :count).by 1
    end
  end

  describe '#add_branch' do

  end
end
