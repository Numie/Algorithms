# O(nlog(n))

def merge_sort(arr, &prc)
  prc ||= Proc.new { |x, y| x <=> y }

  return arr if arr.length <= 1

  mid = arr.length / 2
  sorted_left = merge_sort(arr.take(mid), &prc)
  sorted_right = merge_sort(arr.drop(mid), &prc)

  merge(sorted_left, sorted_right, &prc)
end

def merge(left, right, &prc)
  merged = []

  until left.empty? || right.empty?
    case prc.call(left.first, right.first)
    when -1, 0
      merged << left.shift
    when 1
      merged << right.shift
    end
  end

  merged.concat(left).concat(right)
end
