require './lib/node'


class LinkedList

attr_accessor :head, :data

  def initialize(data=nil)
    @head = nil
  end

  def tail
      current = @head
      until current.next_node == nil
        current =  current.next_node
      end
      current
  end

  def append(data)
    if @head == nil
      @head = Node.new(data)
    else
      current = @head
      until current.next_node == nil
        current =  current.next_node
      end
      current.next_node = Node.new(data)
    end
  end

  def prepend(data)
    Node.new(data).next_node = @head
    @head = Node.new(data)
  end

  def insert(data, position)
    raise "Position doesn't exist" if position > count
    if @head == nil || position == 0
      prepend(data)
    elsif
      new_node = Node.new(data)
      before = @head
      (position-1).times {before = before.next_node}
      after = before.next_node

      before.next_node = new_node
      new_node.next_node = after
    end
  end

  def includes?(data)
    if @head == nil
      return false
    end
    current = @head
    until current.data == data || current.data == nil
      current = current.next_node
      if current.data != data
        return false
      end
    end
    data == current.data
  end

  def pop
    current = @head
    until current.next_node.next_node == nil
        current = current.next_node
    end

    pop_value = current.next_node
    current.next_node = nil
    pop_value
  end

  def count
    current = @head
    counter = 0

    if @head != nil
      counter += 1
      until current.next_node == nil
        counter += 1
        current = current.next_node
      end
    end
    counter
  end

  def head_data
    if @head == nil
      false
    else
      @head.data
    end
  end

  def find_by_index(position)
    raise "Position doesn't exist" if position > count
    if @head == nil
      raise "List is empty"
    end
    current = @head
    (position-1).times {current = current.next_node}
    current.data
  end

  def find_by_value(data_find)
    if @head == nil
      return false
    end
    current = @head
    counter = 0
    if @head != nil
      counter += 1
    end

    while find_by_index(counter) != data_find
      if find_by_index(counter) == nil
        raise "Value does not exist"
      else
        counter += 1
      end
    end
    counter
  end

  def remove_by_index

  end




end












# remove_by_index removes the value at the specified index
# remove_by_value removes the first occurrence of the specified value

