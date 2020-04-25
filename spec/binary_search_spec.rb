require 'rspec'
require 'binary_search'

describe 'binary search' do
  it 'returns the index of the target element' do
    expect(binary_search([1, 2, 3, 4, 5], 4)).to eq(3)
  end

  it 'returns nil if the element does not exist' do
    expect(binary_search([1, 2, 3, 4, 5], 6)).to eq(nil)
  end
end
