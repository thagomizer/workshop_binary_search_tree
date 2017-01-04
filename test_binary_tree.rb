require 'minitest/autorun'
require './binary_tree.rb'

class BinaryTreeTest < Minitest::Test
  def test_existance
    bt = BinaryTree.new

    assert bt
  end
end
