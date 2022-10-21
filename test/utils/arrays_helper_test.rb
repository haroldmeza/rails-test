require "test_helper"
require "./app/utils/arrays_helper.rb"

class ArraysHelperTest < ActionDispatch::IntegrationTest
  test "alternates arrays" do
    vals = []
    array1 = [1, 2, 3]
    array2 = [:a, :b, :c]
    helper = ArraysHelper.new();
    helper.alternating_each(array1, array2) { |v| vals << (v) }
    assert_equal(vals, [1, :a, 2, :b, 3, :c])
  end

  test "operates on provided arrays" do
    vals = []
    array1 = [1, 2, 3]
    array2 = ['a', 'b', 'c']
    helper = ArraysHelper.new();
    helper.alternating_each(array1, array2) { |v| vals << (v * 2) }
    assert_equal(vals, [2, 'aa', 4, 'bb', 6, 'cc'])
  end

  test "handles uneven arrays" do
    vals = []
    array1 = ['a']
    array2 = [1, 2]
    helper = ArraysHelper.new();
    helper.alternating_each(array1, array2) { |v| vals << v }
    assert_equal(vals, ['a', 1, 2])
  end

  test "both array are empty" do
    vals = []
    array1 = []
    array2 = []
    helper = ArraysHelper.new();
    helper.alternating_each(array1, array2) { |v| vals << v }
    assert_equal(vals, [])
  end

  test "second array is greater than first one" do
    vals = []
    array1 = ['a']
    array2 = [1, 2]
    helper = ArraysHelper.new();
    helper.alternating_each(array1, array2) { |v| vals << (v * 3) }
    assert_equal(vals, ['aaa', 3, 6])
  end

  test "second array is greater than first one for two elements" do
    vals = []
    array1 = ['a']
    array2 = [1, 2, 3]
    helper = ArraysHelper.new();
    helper.alternating_each(array1, array2) { |v| vals << (v * 3) }
    assert_equal(vals, ['aaa', 3, 6, 9])
  end

  test "first array is empty" do
    vals = []
    array1 = []
    array2 = [1, 2, 3]
    helper = ArraysHelper.new();
    helper.alternating_each(array1, array2) { |v| vals << (v * 3) }
    assert_equal(vals, [3, 6, 9])
  end

  test "second array is empty" do
    vals = []
    array1 = ['a', 'b', 'c']
    array2 = []
    helper = ArraysHelper.new();
    helper.alternating_each(array1, array2) { |v| vals << (v * 3) }
    assert_equal(vals, ['aaa','bbb','ccc'])
  end

  test "first element is not an array" do
    vals = []
    array1 = "a"
    array2 = ['a', 'b', 'c']
    helper = ArraysHelper.new();
    assert_raise(helper.alternating_each(array1, array2) { |v| vals << (v * 3) })
    #assert_equal(vals, ['aaa','bbb','ccc'])
  end

  test "first array is greater than second one" do
    vals = []
    array1 = ['a','b']
    array2 = [1]
    helper = ArraysHelper.new();
    helper.alternating_each(array1, array2) { |v| vals << (v * 3) }
    assert_equal(vals, ['aaa', 3, 'bbb'])
  end

  test "first array is greater than second one by two elements" do
    vals = []
    array1 = ['a','b','c']
    array2 = [1]
    helper = ArraysHelper.new();
    helper.alternating_each(array1, array2) { |v| vals << (v * 3) }
    assert_equal(vals, ['aaa', 3, 'bbb', 'ccc'])
  end
  # Extend tests to cover additional necessary behaviours.
end
# Bonus: adapt the basic method to conform to map standards