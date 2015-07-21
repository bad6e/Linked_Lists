gem 'minitest', '>= 5.7.0'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/iterative_linked_list'
require '../lib/node'



class NodeTest < Minitest::Test

  def test_it_can_push
    linkedlist = LinkedList.new(1)
    assert_equal Node, linkedlist.head.class
  end

  def test_next_node_is_nil
    linkedlist = LinkedList.new(1)
    assert_equal nil, linkedlist.head.next_node
  end

  def test_it_can_push_to_a_second_node
    linkedlist = LinkedList.new(1)
    linkedlist.append(2)
    assert_equal 2, linkedlist.head.next_node.data
  end

  def test_it_can_push_to_a_third_node
    linkedlist = LinkedList.new(1)
    linkedlist.append(3)
    assert_equal 3, linkedlist.head.next_node.next_node.data
  end


end
