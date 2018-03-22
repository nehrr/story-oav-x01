class Packaging {
  var _isOpen: Bool
  var _toy: Toy?

  var isOpen: Bool {
    get {
      return _isOpen
    }
    set(value) {
      self.isOpen = value
    }
  }

  var toy: Toy? {
    get {
      return _toy
    }
    set(value) {
      self._toy = value
    }
  }

  init() {
    self._isOpen = false
    self._toy = nil
  }

  func open() {
    self._isOpen = true
  }

  func insert(toy: Toy){
    self._toy = toy
    self._isOpen = false
  }

}
