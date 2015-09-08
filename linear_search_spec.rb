require_relative 'linear_search'

describe 'linear_search' do
  let(:sample_array) { [ 6, 29, 18, 2, 72, 19, 18, 10, 37 ] }

  it 'should return the index of the found element' do
    expect(linear_search(18, sample_array)).to eq(2)
  end

  it 'should return nil if the element cannot be found' do
    raise "I need a test!"
  end
end

describe 'global_linear_search' do

end
