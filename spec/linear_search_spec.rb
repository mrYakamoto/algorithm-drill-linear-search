require_relative '../linear_search'

describe 'linear_search' do
  let(:symbols) { [:Q, :O, :A, :A, :C, :G, :S, :U] }

  context 'when the array contains the searched-for element' do
    it 'returns the index of the first occurrence of the element' do
      index_of_a = linear_search(:A, symbols)
      expect(index_of_a).to eq 2
    end
  end



  context 'when the array does not contain the searched-for element' do
    it 'returns nil if the element cannot be found' do
      index_of_x = linear_search(:X, symbols)
      expect(index_of_x).to eq nil
    end
  end
end


describe 'global_linear_search' do
  let(:letters) { ["b","a","n","a","n","a","s"] }

  context 'when the array contains only one occurence of searched-for element' do
    it 'returns an array with the index of occurance' do
      index_of_b = global_linear_search("b", letters)
      expect(index_of_b).to eq [0]
    end
  end

  context 'when the array contains multiples of the searched-for element' do
    it 'returns an array of all occurrences of the element' do
      indexes_of_a = global_linear_search("a", letters)
      expect(indexes_of_a).to eq [1,3,5]
    end
  end

  context 'when array contains no occurences of search-for element' do
    it 'returns an empty array' do
      indexes_of_z = global_linear_search("z", letters)
      expect(indexes_of_z).to eq []
    end
  end
end
