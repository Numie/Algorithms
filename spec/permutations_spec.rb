require 'rspec'
require 'permutations'

describe 'permutations' do
  it 'returns permutations of an empty array' do
    expect(permutations([])).to eq([[]])
  end

  it 'returns permutations of an array of length 1' do
    expect(permutations([1])).to eq([[1]])
  end

  it 'returns permutations of a longer array' do
    expect(permutations([1, 2, 3])).to eq([[3, 2, 1], [2, 3, 1], [2, 1, 3], [3, 1, 2], [1, 3, 2], [1, 2, 3]])
  end
end
