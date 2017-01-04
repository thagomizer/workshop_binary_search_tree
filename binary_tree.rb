class BinaryTree
  def initialize
    @tree = []
  end

  def insert *args
    args.each do |a|
      @tree << a
    end
  end

  def include? *args
    args.all? { |x| @tree.include?(x) }
  end

  def height
    (@tree.length / 2) + (@tree.length % 2)
  end
end
