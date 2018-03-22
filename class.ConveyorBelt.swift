class ConveyorBelt: Furniture {
  var _isBusy: Bool = false
  private var current: Object? = nil

  init() {

  }

  func put(obj: Object) -> Bool {
    if (!_isBusy) {
      self.current = obj
      _isBusy = true
      return true
    } else {
      print("Sorry, the belt is busy!")
      return false
    }
  }

  func take() -> Object? {
    if (_isBusy) {
      let obj: Object = self.current!
      self.current = nil
      return obj
    } else {
      print("Sorry, there is no object")
      return nil
    }
  }

  func fetch() {
    print("Here comes a new object ~~ X ~~")
  }

  func out() {
    print("Goodbye my lover, goodbye ~~ X ~~, you're beautiful")
  }
}
