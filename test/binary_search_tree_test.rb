gem 'minitest', '~> 5.2'
require 'minitest/pride'
require 'minitest/autorun'
require './lib/node'
require './lib/binary_search_tree'

class BinarySearchTreeTest < Minitest::Test


  def test_if_tree_exists
    tree = BinarySearchTree.new
    assert_instance_of BinarySearchTree, tree
  end

  def test_if_root_is_nil
    tree = BinarySearchTree.new
    assert_nil tree.root
  end

  def test_if_root_exists
    tree = BinarySearchTree.new
    tree.insert(3, "small_move")
    refute_nil tree.root
  end


  def test_insert_node_branch
    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    tree.insert(16, "Johnny English")
    tree.insert(92, "Sharknado 3")
    tree.insert(50, "Hannibal Buress: Animal Furnace")

    assert_equal "Bill & Ted's Excellent Adventure", tree.root.title
    assert_equal "Johnny English", tree.root.left.title
    assert_equal "Hannibal Buress: Animal Furnace", tree.root.left.right.title
    assert_equal "Sharknado 3", tree.root.right.title
  end

  def test_include?
    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    tree.insert(16, "Johnny English")
    tree.insert(92, "Sharknado 3")
    tree.insert(50, "Hannibal Buress: Animal Furnace")

    assert tree.include?(16)
    refute tree.include?(72)
  end




end
