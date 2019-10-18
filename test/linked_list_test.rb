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
    result = @list.append('West')

    assert_instance_of Node, result
    assert_equal 'West', result.surname
    assert_equal result, @list.head
  end

  def test_list_head_next_node_is_nil
    result = @list.append('West')

    assert_equal @list.head.next_node, nil
  end

  def test_list_count_is_one
    result = @list.append('West')

    assert_equal @list.count , 1
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
    assert_equal "Hardy", @list.head.surname
    assert_equal @list.head.next_node, nil
    assert_equal 2, @list.count
    # string = "The Rhodes family, followed by the Hardy family"
    # assert_equal @list.string, string
  end
end
