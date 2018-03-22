struct Stack<T> {
    private var array = [T]()

    var isEmpty: Bool {
        return array.isEmpty
    }

    var count: Int {
        return array.count
    }

    mutating func push(_ val: T) {
        array.append(val)
    }

    mutating func pop() -> T? {
        return array.popLast()
    }

    // func isEmpty() -> Bool {
    //     return array.isEmpty
    // }

    // func count() -> Int {
    //     return array.count
    // }
}
