require 'minitest/autorun'
require 'pry'
require 'minitest/pride'
require './lib/linked_list.rb'
require './lib/node.rb'

class LinkedListTest < Minitest::Test

  def setup
    @list = LinkedList.new
  end

  def test_it_exists
    assert_instance_of LinkedList, @list
  end

  def test_head_returns_nil
    assert_equal @head, nil
  end

  def test_append_adds_new_node_to_end_of_the_list
    append = @list.append('West')

    assert_instance_of Node, append
    assert_equal 'West', append.surname
    assert_equal append, @list.head
  end

  def test_list_head_next_node_is_nil
    append = @list.append('West')

    assert_equal @list.head.next_node, nil
  end

  def test_count_is_zero_for_empty_list
    assert_equal 0, @list.count
  end

  def test_list_count_is_one
    @list.append("West")
    assert_equal 1, @list.count
  end

  def test_list_string
    result = @list.append('West')
    string = "The West family"

    assert_equal @list.to_string, string
  end


  def test_i_can_append_a_node
    assert_equal @list.head, nil
    @list.append("Rhodes")

    assert_equal @list.head.surname, "Rhodes"
    assert_equal @list.head.next_node, nil
    @list.append("Hardy")
    result = @list.head.next_node.surname
    assert_equal "Hardy", result
    assert_equal 2, @list.count

    string = "The Rhodes family, followed by the Hardy family"
    assert_equal @list.to_string, string
  end

  def test_empty_returns_true_when_head_is_nil
    assert_equal true, @list.empty?
  end

  def test_empty_returns_false_when_head_is_not_nil
    @list.append("Thomas")
    assert_equal false, @list.empty?
  end

  def test_to_string_works_with_three_nodes
    @list.append('Rhodes')
    @list.append('Hardy')
    @list.append('Smith')
    expected = 'The Rhodes family, followed by the Hardy family, followed by the Smith family'

    assert_equal expected, @list.to_string
  end
end
