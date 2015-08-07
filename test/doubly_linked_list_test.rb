gem 'minitest', '>= 5.7.0'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/iterative_linked_list'
require './lib/node'

class NodeTest < Minitest::Test

  #'TAIL' TESTS
  def test_tail_method_can_find_the_tail
    list = LinkedList.new
    refute list.tail.data
  end

  def test_tail_method_can_find_the_tail
    list = LinkedList.new
    list.append(1)
    list.append(2)
    list.append(3)
    assert_equal 3, list.tail.data
  end

  #'APPEND' TESTS
  def test_can_append_a_node_on_an_empty_list
    list = LinkedList.new
    list.append(1)
    assert_equal 1, list.head.data
  end

  def test_can_append_a_node_on_the_end_of_a_list
    list = LinkedList.new
    list.append(1)
    list.append(2)
    assert_equal 2, list.head.next_node.data
  end

  #'PREPEND' TESTS
  def test_can_prepend_a_node_on_an_empty_list
    list = LinkedList.new
    list.prepend(1)
    assert_equal 1, list.head.data
  end

  def test_can_prepend_a_node_on_the_front_of_a_list
    list = LinkedList.new
    list.append(1)
    list.append(2)
    list.prepend(3)
    assert_equal 3, list.head.data
  end

  #'INSERT' TESTS
  def test_can_insert_node_in_empty_list
    list = LinkedList.new
    list.insert("A", 0)
    assert_equal "A", list.head.data
  end

  def test_can_insert_node_at_the_beginning_of_a_list
    list = LinkedList.new
    list.append("B")
    list.append("C")
    list.insert("A", 0)
    assert_equal "A", list.head.data
  end

  def test_can_insert_node_in_the_middle_of_a_list
    list = LinkedList.new
    list.append("A")
    list.append("C")
    list.append("D")
    list.insert("B", 1)
    assert_equal "B", list.head.next_node.data
  end

  def test_can_insert_node_at_the_end_of_a_list
    list = LinkedList.new
    list.append("A")
    list.append("B")
    list.append("C")
    list.insert("D", 3)
    assert_equal "D", list.head.next_node.next_node.next_node.data
  end

  def test_cannot_insert_node_in_a_position_that_does_not_exit
    list = LinkedList.new
    list.append("A")
    list.append("B")
    list.append("C")
    assert_raises(RuntimeError) {list.insert("D", 20)}
  end

  #'INCLUDES' TESTS
  def test_includes_a_data_point_in_a_list
    list = LinkedList.new
    list.append(1)
    list.append(2)
    list.append(3)
    assert list.includes?(1)
  end

  def test_does_not_include_a_data_point_in_a_list
    list = LinkedList.new
    list.append(1)
    list.append(2)
    list.append(3)
    assert_equal list.includes?(4), false
  end

  def test_includes_a_data_point_in_an_empty_list
    list = LinkedList.new
    assert_equal list.includes?(1), false
  end

  #'POP' TESTS
  def test_can_pop_a_node_from_the_end_of_a_list_and_return_pop_value
    list = LinkedList.new
    list.append(1)
    list.append(2)
    list.append(3)
    list.append(4)
    results = list.pop
    assert_equal 4, results.data
  end

  def test_new_tail_is_set_once_end_value_is_popped_off
    list = LinkedList.new
    list.append(1)
    list.append(2)
    list.append(3)
    list.append(4)
    results = list.pop
    assert_equal 3, list.tail.data
  end

  #'COUNT' TESTS
  def test_can_count_the_numbers_of_elements_in_an_empty_list
    list = LinkedList.new
    results = list.count
    assert_equal 0, results
  end

  def test_can_count_the_numbers_of_elements_in_a_list
    list = LinkedList.new
    list.append(1)
    list.append(2)
    list.append(3)
    list.append(4)
    results = list.count
    assert_equal 4, results
  end

  #'HEAD' TESTS
  def test_can_return_the_head_value_at_the_beginning_of_the_list
    list = LinkedList.new
    list.append(1)
    list.append(2)
    list.append(3)
    list.append(4)
    results = list.head_data
    assert_equal 1, results
  end

  def test_does_not_return_head_data_on_empty_list
    list = LinkedList.new
    results = list.head_data
    refute results
  end

  #'FIND_BY_INDEX' TESTS
  def test_can_find_the_value_at_a_numeric_position
    list = LinkedList.new
    list.append("A")
    list.append("B")
    list.append("C")
    list.append("D")
    results = list.find_by_index(2)
    assert_equal "B", results
  end

  def test_can_not_find_the_value_at_a_numeric_position_that_does_not_exist
    list = LinkedList.new
    list.append("A")
    list.append("B")
    list.append("C")
    list.append("D")
    assert_raises(RuntimeError) {list.find_by_index(20)}
  end

  def test_can_not_find_the_value_at_a_numeric_position_in_an_empty_list
    list = LinkedList.new
    assert_raises(RuntimeError) {list.find_by_index(2)}
  end

  #'FIND_BY_VALUE' TESTS
  def test_can_find_the_position_of_the_first_occrrence_of_a_value
    list = LinkedList.new
    list.append("A")
    list.append("B")
    list.append("C")
    list.append("D")
    assert_equal 3, list.find_by_value("C")
  end

  def test_can_find_the_position_of_the_first_occrrence_of_a_value_diff_value
    list = LinkedList.new
    list.append("A")
    list.append("B")
    list.append("C")
    list.append("D")
    assert_equal 1, list.find_by_value("A")
  end

  def test_can_not_find_the_position_of_a_value_that_does_not_exist
    list = LinkedList.new
    list.append("A")
    list.append("B")
    list.append("C")
    list.append("D")
    assert_raises (RuntimeError) {list.find_by_value("Z")}
  end

  def test_can_not_find_the_position_of_a_value_in_an_empty_list
    list = LinkedList.new
    assert_equal false, list.find_by_value("A")
  end

  #'REMOVE BY INDEX' TESTS
  def test_removes_the_value_at_a_specificied_index
    list = LinkedList.new
    list.append("A")
    list.append("B")
    list.append("C")
    list.append("D")
    list.remove_by_index(1)
    assert_equal "D", list.head.next_node.next_node.data
  end

  def test_removes_the_value_at_the_specified_beginning_of_the_list
    list = LinkedList.new
    list.append("A")
    list.append("B")
    list.append("C")
    list.append("D")
    list.remove_by_index(0)
    assert_equal "B", list.head.data
  end

  def test_removes_the_value_at_the_specified_middle_of_the_list
    list = LinkedList.new
    list.append("A")
    list.append("B")
    list.append("C")
    list.append("D")
    list.remove_by_index(2)
    assert_equal "D", list.head.next_node.next_node.data
  end

  def test_removes_the_value_at_the_specified_end_of_the_list
    list = LinkedList.new
    list.append("A")
    list.append("B")
    list.append("C")
    list.append("D")
    list.remove_by_index(3)
    assert_equal "C", list.head.next_node.next_node.data
  end

  def test_does_not_remove_the_value_on_an_empty_list
    list = LinkedList.new
    assert_equal false, list.remove_by_index(3)
  end

  #'REMOVE_BY_VALUE' TESTS
  def test_removes_the_first_occurrence_of_a_specificed_value
    list = LinkedList.new
    list.append("A")
    list.append("B")
    list.append("C")
    list.append("D")
    list.remove_by_value("B")
    assert_equal "C", list.head.next_node.data
  end

  def test_removes_the_first_occurrence_of_a_specificed_value_at_the_beginning_of_a_list
    list = LinkedList.new
    list.append("A")
    list.append("B")
    list.append("C")
    list.append("D")
    list.remove_by_value("A")
    assert_equal "B", list.head.data
  end

  def test_removes_the_first_occurrence_of_a_specificed_value_at_the_middle_of_a_list
    list = LinkedList.new
    list.append("A")
    list.append("B")
    list.append("C")
    list.append("D")
    list.remove_by_value("C")
    assert_equal "D", list.head.next_node.next_node.data
  end

  def test_removes_the_first_occurrence_of_a_specificed_value_at_the_end_of_a_list
    list = LinkedList.new
    list.append("A")
    list.append("B")
    list.append("C")
    list.append("D")
    list.remove_by_value("D")
    assert_equal "C", list.head.next_node.next_node.data
  end

  def test_does_not_remove_the_first_occurrence_of_a_specificed_value_in_an_empty_list
    list = LinkedList.new
    assert_equal false, list.remove_by_value("D")
  end
end

