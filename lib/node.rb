class Node
  attr_reader :surname, :next_node, :tail
  def initialize(surname)
    @surname = surname
    @next_node = nil
  end

  def tail?
    @next_node == nil 
  end

end
