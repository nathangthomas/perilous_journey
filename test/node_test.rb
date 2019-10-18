require 'minitest/autorun'
require 'pry'
require 'minitest/pride'
require './lib/node.rb'
class NodeTest < Minitest::Test

  def setup
    @subject = Node.new('Burke')
  end

  def test_it_returns_a_node
    assert_instance_of Node, @subject
  end

  def test_it_returns_a_sir_name
    assert_equal @subject.surname, "Burke"
  end

  def test_it_returns_nil
    assert_equal @subject.next_node, nil
  end

  def test_tail_returns_true_when_next_node_is_nil
    assert_equal @subject.tail?, true
  end

  def test_next_node_can_change_node_state
    assert_equal 'Thomas', @subject.next_node
  end


end
