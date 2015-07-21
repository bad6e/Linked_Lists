gem 'minitest', '>= 5.7.0'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/iterative_linked_list'
require '../lib/node'



class NodeTest < Minitest::Test


  def test_empty_list_can_append_a_node
    list = LinkedList.new
    node = Node.new("data")
    list.append(node)
    assert_equal node, list.head
  end

  def test_list_with_one_node_can_append_second_node
    list = LinkedList.new
    node = Node.new("data")
    node2 = Node.new("data2")
    list.append(node)
    list.append(node2)
    assert_equal node2, list.head.next_node

  end

  def test_list_with_one_node_can_append_second_and_third_node
    list = LinkedList.new
    node = Node.new("data")
    node2 = Node.new("data2")
    node3 = Node.new("data3")
    list.append(node)
    list.append(node2)
    list.append(node3)
    assert_equal node3, list.head.next_node.next_node
  end

  def test_list_




end
