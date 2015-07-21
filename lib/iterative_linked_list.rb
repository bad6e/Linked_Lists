require_relative 'node'


class LinkedList

attr_accessor :head, :data

  def initialize(data)
    @head = Node.new(data)
    @data = nil

  end

  def append(data)
    @head = data
  end


end

linkedlist = LinkedList.new(1)
p linkedlist.append(3)

