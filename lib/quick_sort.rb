# O(nlog(n))

def quick_sort(arr)
  return arr if arr.length <= 1
  pivot = arr.shift
  left = arr.select { |n| n <= pivot }
  right = arr.select { |n| n > pivot }
  quick_sort(left).concat([pivot]).concat(quick_sort(right))
end
