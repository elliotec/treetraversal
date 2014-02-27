class Tree
  attr_accessor :name, :left, :right

  def initialize(name, left = nil, right = nil)
    @name = name
    @left = left
    @right = right
  end
  def self.preorder(tree)
    return if tree == nil
    print tree.name.to_s + " "
    tree.name
    preorder(tree.left)
    preorder(tree.right)
  end
  def self.inorder(tree)
    return if tree == nil
    inorder(tree.left)
    print tree.name.to_s + " "
    tree.name
    inorder(tree.right)
  end
  def self.postorder(tree)
    return if tree == nil
    postorder(tree.left)
    postorder(tree.right)
    print tree.name.to_s + " "
    tree.name
  end

end

peter = Tree.new('Peter')
andrea = Tree.new('Andrea')
katie = Tree.new('Katie',peter,andrea)
jony = Tree.new('Jony',Tree.new('Dan'),katie)
phil = Tree.new('Phil',Tree.new('Craig'),Tree.new('Eddie'))
team = Tree.new('Tim',jony,phil)

puts "Preorder-"
  Tree.preorder(team)
puts " "

puts "Inorder-"
  Tree.inorder(team)
puts " "

puts "Postorder-"
  Tree.postorder(team)
puts " "
