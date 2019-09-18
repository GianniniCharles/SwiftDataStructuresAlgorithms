import Foundation

struct PriorityQueue<Element: Equatable>: Queue {
    //Heap Based Priority Queue
    private var heap: Heap<Element>
    
    init(sort: @escaping (Element, Element) -> Bool, elements: [Element] = []) {
        heap = Heap(sort: sort, elements: elements)
    }
    
    mutating func enqueue(_ element: Element) -> Bool {
        heap.insert(element)
        return true
    }
    
    mutating func dequeue() -> Element? {
        return heap.remove()
    }
    
    var isEmpty: Bool {
        return heap.isEmpty
    }
    
    var peek: Element? {
        return heap.peek()
    }
    
}

func testPriorityQueue() {
    print("Testing Priority Queue\n")
    var priorityQueue = PriorityQueue(sort: >, elements: [1, 12, 3, 4, 1, 6, 8, 7])
    while !priorityQueue.isEmpty {
        print(priorityQueue.dequeue()!)
    }
    print("================================================\n")
}


func testPriorityQueueItalian() {
    print("Testing Priority Queue Italian Edition\n")
    let priorityTestArray: [PriorityTestItem] = [
        PriorityTestItem(title: "Vapiano", priority: 2),
        PriorityTestItem(title: "Olive Garden", priority: 12),
        PriorityTestItem(title: "Bucca Di Bepo", priority: 4),
        PriorityTestItem(title: "Italianissimo", priority: 5),
        PriorityTestItem(title: "Divieto", priority: 3),
        PriorityTestItem(title: "Andiamo", priority: 1),
        PriorityTestItem(title: "Zucarrelli", priority: 8),
        PriorityTestItem(title: "Little Caesars", priority: 7),
    ]
    
    var testPriorityQueue = PriorityQueue(sort: >, elements: priorityTestArray)
    while !testPriorityQueue.isEmpty {
        print(testPriorityQueue.dequeue()!)
    }
}


//These two functions yield the same result whether I use array based priority queue or heap based priority queue. Wondering if I should make another function to make it easier for people watching the screencast.

//testPriorityQueue()

//testPriorityQueueItalian()

func testPriorityQueueWaitlist() {
    print("Testing Priority Queue Waitlist\n")

    let personsTestArray: [Person] = [
    Person(name: "Soap", age: 32, isMilitary: true),
    Person(name: "Roach", age: 22, isMilitary: true),
    Person(name: "Ghost", age: 26, isMilitary: true),
    Person(name: "Worm", age: 29, isMilitary: true),
    Person(name: "Hunter", age: 60, isMilitary: true),
    Person(name: "Section", age: 25, isMilitary: true),
    Person(name: "Shepherd", age: 65, isMilitary: true),
    Person(name: "Alex", age: 20, isMilitary: false),
    Person(name: "Blair", age: 29, isMilitary: false),
    Person(name: "Cassidy", age: 26, isMilitary: false),
    Person(name: "Dakota", age: 22, isMilitary: false),
    ]
    
    var waitlistPriorityQueue = PriorityQueue(sort: <, elements: personsTestArray)
    while !waitlistPriorityQueue.isEmpty {
        print(waitlistPriorityQueue.dequeue()!)
    }
    
}


testPriorityQueueWaitlist()
