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

    assert_equal 4, bt.height

    bt.insert 6
    assert_equal 5, bt.height
  end

  def test_it_can_has_diameter
    bt = BinaryTree.new
    bt.insert 8

    assert_equal 1, bt.diameter

    bt.insert 3
    bt.insert 10

    assert_equal 3, bt.diameter

    bt.insert 1
    bt.insert 6
    bt.insert 7
    bt.insert 4
    bt.insert 14
    bt.insert 13
    bt.insert 42

    assert_equal 9, bt.diameter
  end
end
