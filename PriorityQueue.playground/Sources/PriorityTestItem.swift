import Foundation

public struct PriorityTestItem: Comparable {
    public static func < (lhs: PriorityTestItem, rhs: PriorityTestItem) -> Bool {
        return lhs.priority < rhs.priority
    }
    
   public let title: String
   public let priority: Int
    
    public init(title: String, priority: Int) {
        self.title = title
        self.priority = priority
    }
}
