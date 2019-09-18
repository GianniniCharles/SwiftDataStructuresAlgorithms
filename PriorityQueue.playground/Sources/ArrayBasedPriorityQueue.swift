import Foundation

public struct ArrayBasedPriorityQueue<Element: Equatable>: Queue {
    private var array: Array<Element>
    private var sort: (Element, Element) -> Bool
    
   public init(sort: @escaping (Element, Element) -> Bool, elements: [Element] = []) {
        self.sort = sort
        array = elements.sorted(by: sort)
    }
    
   public mutating func enqueue(_ element: Element) -> Bool {
        array.append(element)
        array.sort(by: sort)
        return true
    }
    
    public mutating func dequeue() -> Element? {
        return array.removeFirst()
    }
    
   public var isEmpty: Bool {
        return array.isEmpty
    }
    
   public var peek: Element? {
        return array.first
    }
    
}
