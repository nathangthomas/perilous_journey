require './lib/node.rb'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
    @next_node = nil
  end

  def append(string)
    if @head == nil
      @head = Node.new(string)
    else 
    end
  end

  def count
   if @head != nil
      1
   end
  end

  def to_string
    "The #{self.head.surname} family"
  end
end
