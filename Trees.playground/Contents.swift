import UIKit

//var str = "Hello, playground"

//Creating a Tree
    //let beverages = TreeNode("Beverages")
    //let hot = TreeNode("Hot")
    //let cold = TreeNode("Cold")
    //beverages.add(hot)
    //beverages.add(cold)

func makeBeverageTree() -> TreeNode<String> {
    let tree = TreeNode("Beverages")
    let hot = TreeNode("hot")
    let cold = TreeNode("cold")
    let tea = TreeNode("tea")
    let coffee = TreeNode("coffee")
    let chocolate = TreeNode("cocoa")
    let blackTea = TreeNode("black")
    let greenTea = TreeNode("green")
    let chaiTea = TreeNode("chai")
    let soda = TreeNode("soda")
    let milk = TreeNode("milk")
    let gingerAle = TreeNode("ginger ale")
    let bitterLemon = TreeNode("bitter lemon")
    tree.add(hot)
    tree.add(cold)
    hot.add(tea)
    hot.add(coffee)
    hot.add(chocolate)
    cold.add(soda)
    cold.add(milk)
    tea.add(blackTea)
    tea.add(greenTea)
    tea.add(chaiTea)
    soda.add(gingerAle)
    soda.add(bitterLemon)
    return tree
}


//Depth First Traversal

//
//    let tree = makeBeverageTree()
//    print("---Example of: depth-first traversal---")
//    tree.forEachDepthFirst { print($0.value) }

//Level-Order Traversal

    //print("---Example of: level-order traversal")
    //let tree = makeBeverageTree()
    //tree.forEachLevelOrder { print($0.value)}

//Search for a Node
    //print("---Example of: searching for a node---")
    //let tree = makeBeverageTree()
    //if let searchResult1 = tree.search("ginger ale") {
    //    print("Found node: \(searchResult1.value)")
    //}
    //
    //if let searchResult2 = tree.search("WKD Blue") {
    //    print(searchResult2.value)
    //    } else {
    //        print("Couldn't find WKD Blue")
    //    }

// Tree Challenge

  //Level Search
  let root = TreeNode(15)
  let first = TreeNode(1)
  let second = TreeNode(17)
  let third = TreeNode(20)
  let fourth = TreeNode(1)
  let fifth = TreeNode(5)
  let sixth = TreeNode(0)
  let seventh = TreeNode(2)
  let eighth = TreeNode(5)
  let ninth = TreeNode(7)

  root.add(first)
  root.add(second)
  root.add(third)
  first.add(fourth)
  first.add(fifth)
  first.add(sixth)
  second.add(seventh)
  third.add(eighth)
  third.add(ninth)

root.forEachLevelOrder {print($0.value)}
