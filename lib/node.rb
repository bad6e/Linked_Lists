class Node

  attr_accessor :data, :next_node

  def initialize(data = nil, next_node = nil)
    @data = data
    @next_node = nil
  end

  def tail?
    @data.next_node?
  end
end


# p node_1 = Node.new(1)
# p node_2 = Node.new(2)
# p node_3 = Node.new(3)
# p node_4 = Node.new(4)

# node_1.next = node_2
# node_2.next = node_3
# node_3.next = node_4

