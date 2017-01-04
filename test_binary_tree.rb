require 'minitest/autorun'
require './binary_tree.rb'

class BinaryTreeTest < Minitest::Test
  def test_existance
    bt = BinaryTree.new

    assert bt
  end

  def test_it_cans_has_inserts
    bt = BinaryTree.new
    bt.insert 1,2,3

    assert bt.include?(1)
    refute bt.include?(21321)
  end
end
