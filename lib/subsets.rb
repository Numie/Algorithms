def subsets(arr)
  return [arr] if arr.empty?
  last = arr.pop
  subsets = subsets(arr)
  additions = subsets.map { |sub| sub + [last] }
  subsets.concat(additions)
end
