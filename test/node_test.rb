gem 'minitest', '>= 5.7.0'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/node'

class NodeTest < Minitest::Test

  def test_next_node_is_nill
    node = Node.new
    assert_equal nil, node.next_node
  end

  def test_data_is_nill
    node = Node.new
    assert_equal nil, node.data
  end
end

