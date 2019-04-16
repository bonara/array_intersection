# Returns a new array to that contains elements in the intersection of the two input arrays
# Time complexity: O(n x m), where n and m are length of the arrays
# Space complexity: O(n) if n < m, where n is the length of the smaller array.
def intersection(array1, array2)
  expected_intersection = []
  return expected_intersection if array1.nil? || array2.nil?
  return expected_intersection if array1.empty? || array2.empty?

  i = 0
  j = 0
  while i < array1.length
    j = 0
    while j < array2.length
      expected_intersection << array1[i] if array1[i] == array2[j]
      j += 1
    end
    i += 1
  end
  expected_intersection
end
