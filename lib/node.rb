class Node
  attr_reader :title,
              :score

  attr_accessor :left,
                :right

  def initialize(score, title, left = nil, right = nil)
    @title = title
    @score = score
    @left = left   # an instance of Node
    @right = right # an instance of Node

  end

  def insert(input_node, current_depth) #root.nil == false
    puts "this_node(title: #{@title}, score: #{@score}).insert(input_node(title: #{input_node.title}, score: #{input_node.score}))"

    next_depth = current_depth + 1

    if  @score > input_node.score && @left.nil?
        @left = input_node
        next_depth

    elsif @score > input_node.score
        @left.insert(input_node, next_depth)

    elsif @score < input_node.score && @right.nil?
        @right = input_node
        next_depth

    elsif @score < input_node.score
        @right.insert(input_node, next_depth)
    end
  end


  def include?(score)
    puts "this_node(title: #{@title}, score: #{@score}).include?(#{score})"
    if @score == score
      true
    elsif @score > score && @left.nil?
      false
    elsif @score < score && @right.nil?
      false
    elsif @score > score
      @left.include?(score)
    elsif @score < score
      @right.include?(score)
    end
  end


end
