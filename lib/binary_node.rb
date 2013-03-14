require 'node'

class BinaryNode < Node
  attr_accessor :left_child, :right_child

  def initialize(payload, left_child = nil, right_child = nil)
    @left_child = left_child
    @right_child = right_child
    super(payload)
  end
end