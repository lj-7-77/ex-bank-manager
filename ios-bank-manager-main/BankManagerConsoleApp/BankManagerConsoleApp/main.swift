//
//  BankManagerConsoleApp - main.swift
//  Created by yagom. 
//  Copyright © yagom academy. All rights reserved.
// 

import Foundation

final class Node<T> {
    var data: T?
    var next: Node?

    init(data: T? = nil, next: Node? = nil) {
        self.data = data
        self.next = next
    }
}

final class LinkedList<T> {
    var head: Node<T>?
    var tail: Node<T>?
    var newNode: Node<T>?
    var count: Int = 0
    var firstData: T? {
        return head?.data
    }
    
    func insertLast(data: T) {
        newNode = Node<T>(data: data, next: nil)
        count += 1
        if head == nil {
            head = newNode
            return
        }
        
        var node = head
        while node?.next != nil {
            node = node?.next
        }
        node?.next = newNode
        tail = node?.next
    }
    
    func removeFirst() {
        let firstNode = head
        if head == nil {
            print("삭제할 노드가 없습니다.")
        }
        head = firstNode?.next    //head가 두번째 노드를 가리키도록 함
        firstNode?.next = nil
    }
    
    func removeAll() {
        head = nil
        tail = head
    }
    
    func isEmpty() -> Bool {
        guard head == nil else {
            return true
        }
        return false
    }
}
