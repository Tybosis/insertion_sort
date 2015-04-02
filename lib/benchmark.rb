require 'benchmark'
require_relative 'insertion'

Benchmark.bm(3) do |x|
  x.report("best:") { Sorting.insertion_sort((1..10_000).to_a) }

  x.report("worst:") { Sorting.insertion_sort((1..10_000).to_a.reverse) }

  x.report("random:") { Sorting.insertion_sort((1..10_000).to_a.shuffle) }
end
