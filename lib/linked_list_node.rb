class LinkedListNode
  attr_reader :data
  attr_accessor :next

  def initialize(data)
    @data = data
    @next = nil
  end
end
