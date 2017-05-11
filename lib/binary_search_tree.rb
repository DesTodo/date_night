require'pry'

class BinarySearchTree
  attr_reader :root


 def initialize
   @root = nil #until first value is passed into it
   @depth = 0
 end

 def insert(score, title) #root.nil == false
   puts "BinarySearchTree.insert(title: #{title}, score: #{score})"

   depth_of_root = 0

   if  @root.nil?
       @root = Node.new(score, title)
       depth_of_root
   else
       @root.insert(Node.new(score, title), depth_of_root)
   end
 end


  def include?(score)
    puts "Does BinarySearchTree.root equal #{score}?"
    if  @root.nil?
      false
    elsif @root.score == score
      true
    elsif @root.score > score && @root.left.nil?
      false
    elsif @root.score < score && @root.right.nil?
      false
    elsif @root.score > score
      @root.left.include?(score)
    elsif @root.score < score
      @root.right.include?(score)
    end
  end



end
