class Node {
    let value: Int
    var next: Node?
    init(value: Int, next: Node?) {
        self.next = next
        self.value = value
    }
}

let node3 = Node(value: 13, next: nil)
let node2 = Node(value: 11, next: node3)
let node1 = Node(value: 7, next: node2)

func showList(head: Node?) {
    var currentNode = head
    while currentNode != nil {
        print(currentNode?.value ?? -1)
        currentNode = currentNode?.next
    }
}

showList(head: node1)

func reverseList(head: Node?) -> Node? {
    var currentNode = head
    var prev: Node?
    var next: Node?
    
    while currentNode != nil {
        next = currentNode?.next
        currentNode?.next = prev
        prev = currentNode
        currentNode = next
    }
    return prev
}
print("------------")

var myReversedList = reverseList(head: node1)
showList(head: myReversedList)
