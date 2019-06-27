import Foundation

//Creating a Binary Tree
var tree: BinaryNode<Int> = {
    let zero = BinaryNode(value: 0)
    let one = BinaryNode(value: 1)
    let five = BinaryNode(value: 5)
    let seven = BinaryNode(value: 7)
    let eight = BinaryNode(value: 8)
    let nine = BinaryNode(value: 9)
    
    seven.leftChild = one
    one.leftChild = zero
    one.rightChild = five
    seven.rightChild = nine
    nine.leftChild = eight
    
    return seven
}()

//Tree Diagram
    //print("Example of Tree Diagram")
    //print(tree)


//In-Order Traversal
    //tree.traverseInOrder(visit: { print($0) })


//Pre-Order Traversal
    //tree.traversePreOrder { print($0) }

//Post Order Traversal
//    print("Example of Post Order Traversal")
//    tree.traversePostOrder { print($0) }

