class BinaryTree
  def initialize
    @tree = []
  end

  def insert *args
    @tree += args
  end

  def include? *args
    args.all? { |x| @tree.include?(x) }
  end
end
