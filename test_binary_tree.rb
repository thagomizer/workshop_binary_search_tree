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

  def test_it_can_has_height
    bt = BinaryTree.new
    bt.insert 2

    assert_equal 1, bt.height

    bt.insert 1
    bt.insert 3

    assert_equal 2, bt.height

    bt.insert 4
    bt.insert 5

    assert_equal 3, bt.height
  end
end
