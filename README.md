#### Intro

Imagine you're in a job interview and you get to everyone's favorite part: live coding. Your interviewer asks you write a method to calculate the diameter of a binary search tree.

#### Steps

##### First you're going to need a binary search tree.

> If you wish to make an apple pie from scratch, you must first invent the universe.
> -- Carl Sagan

A binary search tree (BST) is a data structure that can take many forms. For our purposes, we'll use the following characteristics:
* A binary search tree is composed of 0 or more nodes.
* A node has a reference to its parent, a left subtree, a right subtree, and a value.
* All the values in a node's left subtree must be less than that node's value, while all the values in a node's right subtree must be greater than that node's value.
* A minimal binary search tree implementation should include methods for inserting nodes in the tree and searching the tree for a presence of a value.

For example, creating a new binary search tree and adding the values `8 3 1 6 4 7 10 14 13` would result in this tree:

<a title="By No machine-readable author provided. Dcoetzee assumed (based on copyright claims). [Public domain], via Wikimedia Commons" href="https://commons.wikimedia.org/wiki/File%3ABinary_search_tree.svg"><img width="256" alt="Binary search tree" src="https://upload.wikimedia.org/wikipedia/commons/thumb/d/da/Binary_search_tree.svg/256px-Binary_search_tree.svg.png"/></a>

An example implementation should work something like this:

```
>> t = BST.new ;
?> t.insert(5) ;
?> t.include?(5)
=> true
>> t.include?(6)
=> false
```

If you're stumped, here's a basic structure to get you started:
<details>
<summary>Spoilers!</summary>
```
class BST
  def initialize
    @root = nil
  end

  def insert(value)
    if @root
      # write your code here
    else
      @root = Node.new(value)
    end

    self
  end

  def search(value)
    # write your code here
  end
  alias_method :include?, :search

  class Node
    attr_writer :left, :right
    attr_reader :value

    def initialize(value, parent=nil)
      @value, @parent = value, parent
    end
  end
end
```
</details>

##### Next you need to be able to calculate the height.

The height of a tree is the length of the longest path through it from its root to any leaf node (that is, a node with no subtrees). The height of the example tree above is 4.

<details>
<summary>Hint</summary>
* A tree with no nodes has a height of 0.
* A tree with one node has a height of 1.
* All other trees have a height of 1 plus the maximum of the heights of its left and right subtrees.
</details>

##### Now you can calculate the diameter.

The diameter of a tree is the length of the longest path from any two nodes in the tree. The diameter of the example tree above is 7.

<details>
<summary>Hint</summary>
* A tree with zero nodes has a diameter of 0. 
* A tree with one node has a diameter of 1.
* All other trees have a diameter that is the maximum of:
  * the diameter of the left subtree
  * the diameter of the right subtree
  * 1 plus the height of the left subtree plus the height of the right subtree
</details>

#### "Since we've still got a few minutes left ..."

These are some extra things that can be added to your implementation independently, in roughly descending order of difficulty.

* Add methods that return the minimum and maximum values.
* Add a method that returns a sorted array of the values.
* Add a method to delete values.
* Add methods that calculate the floor and ceiling of a value (that is, the closest values in the tree that are &lt;= and &gt;= for a given value).
* Adding the same elements to a binary search tree in a different order can result in very bad performance and so-called unbalanced trees. Add a method that balances a binary search tree (that is, that returns the most compact and efficient form of that binary search tree).
* Implement a set data structure with your binary search tree. The insert and search methods can be used as is, but height and diameter don't make sense for a set, and you'll need to add subset and superset methods.
* Visualizing a tree can be difficult. Add a method to display a tree in some kind of visually pleasing way.

#### References:
* http://algs4.cs.princeton.edu/32bst/
* https://dzone.com/articles/algorithm-week-balancing
* https://crackinterviewtoday.wordpress.com/2010/03/11/diameter-of-a-binary-tree/
* https://en.wikipedia.org/wiki/Binary_search_tree
* https://twitter.com/brian_pearce/status/814188998784495616
