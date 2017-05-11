gem 'minitest', '~> 5.2'
require 'minitest/pride'
require 'minitest/autorun'
require './lib/node'


class NodeTest < Minitest::Test


  def test_if_it_exists
    node = Node.new(3, "movie")

    assert_instance_of Node, node
  end


  def test_it_has_a_name
    node = Node.new(3, "movie")

    assert_equal "movie", node.title

  end

  def test_it_has_a_score
    node = Node.new(3, "movie")

    assert_equal 3, node.score
  end

  def test_it_has_no_nodes
    node = Node.new(3, "movie")

    assert_nil node.right
    assert_nil node.left
  end


  def test_insert_node_locations

    test_node = Node.new(61, "Bill & Ted's Excellent Adventure")
    test_node.insert(Node.new(16, "Johnny English"), 0)
    test_node.insert(Node.new(92, "Sharknado 3"), 0)
    test_node.insert(Node.new(50, "Hannibal Buress: Animal Furnace"), 0)

    assert_equal "Bill & Ted's Excellent Adventure", test_node.title
    assert_equal "Johnny English", test_node.left.title
    assert_equal "Hannibal Buress: Animal Furnace", test_node.left.right.title
    assert_equal "Sharknado 3", test_node.right.title
  end

  def test_include?
    test_node = Node.new(61, "Bill & Ted's Excellent Adventure")
    test_node.insert(Node.new(16, "Johnny English"), 0)
    test_node.insert(Node.new(92, "Sharknado 3"), 0)
    test_node.insert(Node.new(50, "Hannibal Buress: Animal Furnace"), 0)

    assert test_node.include?(16)
    refute test_node.include?(72)
  end


end
