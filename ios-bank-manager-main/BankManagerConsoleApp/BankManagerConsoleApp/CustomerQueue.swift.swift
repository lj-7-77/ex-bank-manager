//
//  CustomerQueue.swift.swift
//  BankManagerConsoleApp
//
//  Created by 임지연 on 2023/03/01.
//

import Foundation

struct CustomerQueue<T> {
    var list: LinkedList<T> = LinkedList()
    
    func enqueue(data: T) {
        list.insertLast(data: data)
    }
    
    func dequeue() {
        list.removeFirst()
    }
    
    func clear() {
        list.removeAll()
    }
    
    func peek() -> T? {
        return list.firstData
    }
    
    func isEmpty() -> Bool {
        return list.isEmpty()
    }
}
