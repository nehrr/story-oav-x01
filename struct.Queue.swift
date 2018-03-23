struct Queue<T> {
  private var array: Array<T> = []

  var isEmpty: Bool {
    return array.isEmpty
  }

  var count: Int {
    return array.count
  }

  var content: [T] {
    return self.array
  }

  mutating func push(_ val: T) {
    array.append(val)
  }

  mutating func pop() -> T? {
    return array.removeFirst()
  }
}
