class BSTNode
  attr_reader :value
  attr_accessor :left, :right
  def initialize(value)
    @value = value
    @left = nil
    @right = nil
    @parent = nil
  end
end
