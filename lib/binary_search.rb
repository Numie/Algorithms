# O(log(n))

def binary_search(sorted_arr, target)
  return nil if sorted_arr.empty?

  mid_idx = sorted_arr.length / 2
  val = sorted_arr[mid_idx]
  if val == target
    mid_idx
  elsif val > target
    binary_search(sorted_arr.take(mid_idx), target)
  else
    search_result = binary_search(sorted_arr.drop(mid_idx + 1), target)
    search_result.nil? ? nil : mid_idx + 1 + search_result
  end
end
