gem 'minitest', '>= 5.7.0'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/iterative_linked_list'
require '../lib/node'

class NodeTest < Minitest::Test

  def test_empty_list_can_append_a_node
    list = LinkedList.new
    node = Node.new("1")
    list.append(node)
    assert_equal node, list.head
  end

  def test_list_with_one_node_can_append_second_node
    list = LinkedList.new
    node = Node.new("1")
    node2 = Node.new("2")
    list.append(node)
    list.append(node2)
    assert_equal node2, list.head.next_node
  end

  def test_list_with_one_node_can_prepend_a_node_before_it
    list = LinkedList.new
    node = Node.new("1")
    node2 = Node.new("2")
    node3 = Node.new("3")

    list.append(node)
    list.append(node2)
    list.prepend(node3)
    assert_equal node3, list.head
  end

  def test_list_with_one_nodes_can_insert_at_beginning
    list = LinkedList.new
    node = Node.new("1")
    node2 = Node.new("2")

    list.append(node)
    list.insert(node2, 0)
    assert_equal node2, list.head
  end

   def test_list_with_four_nodes_can_insert_in_the_middle
    list = LinkedList.new
    node = Node.new("1")
    node2 = Node.new("2")
    node3 = Node.new("3")
    node4 = Node.new("4")

    list.append(node)
    list.append(node2)
    list.append(node3)
    list.insert(node4, 1)
    assert_equal node4, list.head.next_node
  end

  def test_list_with_one_nodes_can_insert_at_end
    list = LinkedList.new
    node = Node.new("1")
    node2 = Node.new("2")
    node3 = Node.new("3")
    node4 = Node.new("4")

    list.append(node)
    list.append(node2)
    list.append(node3)
    list.insert(node4, 3)
    assert_equal node4, list.head.next_node.next_node.next_node
  end


  def test_includes_data_point
    list = LinkedList.new
    node = Node.new("1")
    node2 = Node.new("2")
    node3 = Node.new("3")
    node4 = Node.new("4")

    list.append(node)
    list.append(node2)
    list.append(node3)

    assert list.includes?("1")
  end
end
