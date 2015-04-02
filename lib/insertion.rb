# sorting module to contain insertion_sort
module Sorting
  def self.insertion_sort(array)
    current = 1
    holding = 1
    while holding <= (array.length - 1)
      while current > 0
        array[current], array[current - 1] = array[current - 1], array[current] if array[current] < array[current - 1]
        current -= 1
      end
      current = holding + 1
      holding = current
    end
    array
  end
end
