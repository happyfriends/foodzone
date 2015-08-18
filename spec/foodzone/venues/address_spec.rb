require_relative '../../../app/foodzone/venues/address'

describe Venues::Address do
  describe '::from_str' do
    let(:address) { described_class.from_str(address_str) }
    let(:address_str) { 'My place, #02, Hood' }

    it 'extract street' do
      expect(address.street).to eql 'My place'
    end

    it 'extract number' do
      expect(address.number).to eql '#02'
    end

    it 'extract neighbor hood' do
      expect(address.hood).to eql 'Hood'
    end
  end
end
