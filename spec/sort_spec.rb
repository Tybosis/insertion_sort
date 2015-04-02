require 'spec_helper'
require 'insertion'

describe "insertion method" do
  it 'sorts a reversed array' do
    array = (1..5).to_a.reverse!
    Sorting.insertion_sort(array).must_equal [1, 2, 3, 4, 5]
  end

  it "sorts a random array" do
    array = (1..10).to_a.shuffle!
    sorted = (1..10).to_a
    Sorting.insertion_sort(array).must_equal sorted
  end

  it 'sorts an already sorted array' do
    array = (1..10).to_a
    Sorting.insertion_sort(array).must_equal array
  end

  it 'sorts a nearly sorted array' do
    array = [1, 2, 3, 7, 4, 5, 8, 6, 10, 9]
    ans = (1..10).to_a
    Sorting.insertion_sort(array).must_equal ans
  end

  it 'sorts a large array' do
    array = (1..1000).to_a
    Sorting.insertion_sort(array.shuffle).must_equal array
  end
end
