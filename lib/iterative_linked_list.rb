require_relative 'node'


class LinkedList

attr_accessor :head, :data

  def initialize(node=nil)
    @head = node
  end

  def append(node)
    if @head == nil
      @head = node
    else
      current = @head
      until current.next_node == nil
        current =  current.next_node
      end
      current.next_node = node
    end
  end

  def prepend

  end


  def insert


  end


  def count


  end



end

# prepend an element at the beginning of the list
# insert an element at an arbitrary position in the list
# includes? gives back true or false whether the supplied value is in the list
# pop an element from the end of the list
# count the number of elements in the list
# return the head value at the beginning of the list
# return the tail value at the end of the list
# find_by_index find the value at a numeric position
# find_by_value finds the position of the first occurrence of a value
# remove_by_index removes the value at the specified index
# remove_by_value removes the first occurrence of the specified value

