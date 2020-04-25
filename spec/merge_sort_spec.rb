require 'rspec'
require 'merge_sort'

describe 'merge_sort' do
  it 'sorts an empty array' do
    expect(merge_sort([])).to eq([])
  end

  it 'sorts an array of length 1' do
    expect(merge_sort([1])).to eq([1])
  end

  it 'sorts a long array' do
    expect(merge_sort([9, 4, 5, 6, 2, 0, 7, 8, 3, 1])).to eq([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
  end

  it 'sorts an array with dupes' do
    expect(merge_sort([1, 3, 4, 4, 2, 4, 2, 1, 3])).to eq([1, 1, 2, 2, 3, 3, 4, 4, 4])
  end
end
