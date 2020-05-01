require 'rspec'
require 'subsets'

describe 'subsets' do
  it 'returns subsets of an empty array' do
    expect(subsets([])).to eq([[]])
  end

  it 'returns subsets of an array of length 1' do
    expect(subsets([1])).to eq([[], [1]])
  end

  it 'returns subsets of a longer array' do
    expect(subsets([1, 2, 3])).to eq([[], [1], [2], [1, 2], [3], [1, 3], [2, 3], [1, 2, 3]])
  end
end
