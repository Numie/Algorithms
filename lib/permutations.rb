def permutations(arr)
  return [arr] if arr.length <= 1
  last = arr.pop
  permutations = permutations(arr)
  new_permutations = []
  permutations.each do |permutation|
    (0..permutation.length).each do |idx|
      new_permutations << permutation.dup.insert(idx, last)
    end
  end
  new_permutations
end
