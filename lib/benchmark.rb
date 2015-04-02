require 'benchmark'
require_relative 'insertion'

Benchmark.bm(3) do |x|
  array = (1..10_000).to_a
  x.report("insertion best  :") { Sorting.insertion_sort(array) }

  x.report("built-in best   :") { Sorting.insertion_sort(array) }

  x.report("insertion worst :") { Sorting.insertion_sort(array.reverse) }

  x.report("built-in worst  :") { Sorting.insertion_sort(array.reverse) }

  x.report("insertion random:") { Sorting.insertion_sort(array.shuffle) }

  x.report("built-in random :") { Sorting.insertion_sort(array.shuffle) }
end
