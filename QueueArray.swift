//
//  QueueArray.swift
//  
//
//  Created by Encompass on 6/29/19.
//

import Foundation

public struct QueueArray<T>: Queue {
    private var array: [T] = []
    public init() {}
}
