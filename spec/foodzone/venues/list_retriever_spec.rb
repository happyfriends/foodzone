require_relative '../../../app/foodzone/venues/list_retriever'

describe Venues::ListRetriever do
  let(:retriever) { described_class }

  context '::execute' do
    context 'for empty list of venues' do
      it 'returns a empty list of venues' do
        expect(retriever.execute.to_a).to eql []
      end

      it 'returns the proper message' do
        expect(retriever.execute.message).to eql "There are no venues covering that address"
      end
    end
  end
end
