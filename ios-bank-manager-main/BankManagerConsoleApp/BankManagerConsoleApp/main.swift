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

final class LinkedList {
    var head: Node<String>?
    var tail: Node<String>?
    var newNode: Node<String>?
    
    func enqueue(data: String) {
        newNode = Node<String>(data: data, next: nil)
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
    
    func dequeue() {
        var firstNode = head     //첫번째노드 찾기
        if head == nil {
            print("삭제할 노드가 없습니다.")
        }
        head = firstNode?.next    //head가 두번째 노드를 가리키도록 함
        firstNode?.next = nil    //첫번째 노드의 next에 nil
    }
    
    func clear() {
        head = nil
        tail = head
    }
    
    func peek() -> Node<String>? { //top을 반환한다. 삭제 X
        guard let firstNode = head else {
            return nil
        }
        return firstNode
    }
    
    func isEmpty() -> Bool {
        guard head == nil else {
            return true
        }
        return false
    }
}
