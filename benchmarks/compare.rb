require 'benchmark'
require_relative '../lib/bubble_sort'
require_relative '../lib/insertion_sort'
require_relative '../lib/selection_sort'

[100, 1000, 10_000].each do |size|
  puts "\nBenchmark for size #{size}"

  data = Array.new(size) { rand(1..1_000_000) }
  Benchmark.bm(15) do |x|
    x.report("Bubble Sort: ") { BubbleSort.sort(data.dup) }
    x.report("Insertion Sort: ") { InsertionSort.sort(data.dup) }
    x.report("Selection Sort: ") { InsertionSort.sort(data.dup) }
  end
end
