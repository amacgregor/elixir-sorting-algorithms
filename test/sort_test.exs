defmodule SortTest do
  use ExUnit.Case
  doctest Sort

  test "handle empty list" do
    assert Sort.ssort([]) == []
  end
  test "basic selection sort test" do 
    assert Sort.ssort([100,200,10,1]) == [1,10,100,200]
    assert Sort.ssort([9,8,7,6,5,4,3,2,1]) == [1,2,3,4,5,6,7,8,9]
  end
end
