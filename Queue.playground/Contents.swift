import Foundation


/* Queue Array Example
 enqueue: O(1) except when array doubles (amortized O(1)
 dequeue: O(n)
 Space Complexity O(n)
 Less allocation overhead than LinkedList because Array has bulk allocation.
 */

func queueArrayExample() {
    var queue = QueueArray<String>()
    queue.enqueue("Ray")
    queue.enqueue("Brian")
    queue.enqueue("Eric")
    queue
    queue.dequeue()
    queue
    queue.peek
}

//queueArrayExample()


/* Queue Doubly LinkedList Example
O(1) dequeue
O(1) enqueue
O(n) space complexity
 Dynamic allocation which is more expensive than Array bulk allocation
 Each element needs storage for the front and back reference (linked list weakness)
 */
func queueDoublyLinkedListExample() {
    var queue = QueueLinkedList<String>()
    queue.enqueue("Ray")
    queue.enqueue("Brian")
    queue.enqueue("Eric")
    queue
    queue.dequeue()
    queue
    queue.peek
}
