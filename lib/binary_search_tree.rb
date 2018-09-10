# There are many ways to implement these methods, feel free to add arguments 
# to methods as you see fit, or to create helper methods.
require_relative 'bst_node'
class BinarySearchTree
  attr_reader :root

  def initialize
    @root = nil
  end

  def insert(value, curr_node = @root)
    new_node = BSTNode.new(value)
    @root = new_node if @root.nil?
    if value > curr_node.value
      if curr_node.right.nil?
        curr_node.right = BSTNode.new(value)
      insert(value, curr_node.right)
    else
      new_node = curr_node.left unless curr_node.left
      insert(value, curr_node.left)
    end
  end

  def find(value, tree_node = @root)
    return tree_node if tree_node.value == value
    if value > tree_node.value
      return nil if tree_node.right.nil?
      self.find(value, tree_node.right)
    else
      return nil if tree_node.left.nil?
      self.find(value, tree_node.left)
    end
  end

  def delete(value)
  end

  # helper method for #delete:
  def maximum(tree_node = @root)
  end

  def depth(tree_node = @root)
  end 

  def is_balanced?(tree_node = @root)
  end

  def in_order_traversal(tree_node = @root, arr = [])
  end


  private
  # optional helper methods go here:
  

end
