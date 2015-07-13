class LinkedList
  attr_reader :head_node

  def initialize()
    @head_node = nil
  end

  def add(data)
    if (@head_node.nil?)
      @head_node = LinkedListNode.new(data)
    else
      new_node = LinkedListNode.new(data)
      node = @head_node
      while (node.next != nil)
        node = node.next
      end
      node.next = new_node
    end
  end

  def as_string
    str = ""
    node = @head_node
    while (node != nil)
      str += node.data.to_s
      node = node.next
    end
    str
  end

  def reverse_in_place
    previous_node = nil

    while (@head_node != nil)
      next_node = @head_node.next
      @head_node.next = previous_node

      previous_node = @head_node
      @head_node = next_node
    end

    @head_node = previous_node
  end
end
