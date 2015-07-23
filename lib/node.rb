class Node

  attr_accessor :data, :next_node

  def initialize(data = nil, next_node = nil)
    @data = data
    @next_node = nil
  end

  def tail?
    @data.next_node == nil
  end
end

