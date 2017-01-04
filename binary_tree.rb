require 'pry'

class Node
  attr_accessor :left, :right, :value

  def initialize val
    @value = val
  end
end

class BinaryTree
  def initialize
    @root = nil
  end

  def insert *args
    args.each do |a|
      n = Node.new a

      if @root.nil?
        @root = n
      else
        c = @root
        loop do
          if a < c.value then
            if c.left.nil?
              c.left = n
              break
            else
              c = c.left
              next
            end
          else
            if c.right.nil?
              c.right = n
              break
            else
              c = c.right
              next
            end
          end
        end
      end
    end
  end

  def find a, root
    return nil unless root

    return root if root.value == a

    if root.value < a
      find(a, root.left)
    else
      find(a, root.right)
    end
  end

  def include? *args
    args.all? { |a| find(a, @root) }
  end

  def height_helper root
    return 0 unless root
    return 1 + [height_helper(root.left), height_helper(root.right)].max
  end

  def height
    height_helper @root
  end
end
