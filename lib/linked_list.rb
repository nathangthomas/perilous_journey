require './lib/node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
    @next_node = nil
  end

  def append(surname)
    node = Node.new(surname)
    if empty?
      self.head = node
    else
      last_node(head).next_node = node
    end
  end

  def count
    return 0 if empty?
    count_node(head, 1)
  end

  def last_node(node)
    return node if node.tail?
    last_node(node.next_node)
  end

  def to_string
    "The #{self.head.surname} family"
  end

  def empty?
    head.nil?
  end

  private

  def count_node(node, counter)
    return counter if node.tail?
    count_node(node.next_node, counter += 1)
  end
end
