import Foundation

class ConveyorBelt: Furniture {

  var _isBusy: Bool = false
  private var current: Object? = nil

  init() {

  }

  func put(obj: Object) -> Bool {
    if (!_isBusy) {
      self.current = obj
      self._isBusy = true
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
    let classes: [String] = [
      "Pony",
      "OneArmedSoldier",
      "Box",
      "GiftWrap"
    ]

    let aClassName = classes[Int(arc4random_uniform(UInt32(classes.count)))]

    switch aClassName {

    case "OneArmedSoldier":
      self.current = OneArmedSoldier()
      break
    case "Box":
      self.current = Box()
      break
    case "GiftWrap":
      self.current = GiftWrap()
      break

    default:
      self.current = Pony()
    }

    // Instanciate a class from a String
    // let aClass = NSClassFromString(aClassName) as! Object.Type
    // self.current = aClass.init()

    print("Here comes a new object ~~ \(type(of: self.current!)) ~~\n")

  }

  func out() {
    if (self.current != nil) {
      print("Goodbye my lover, goodbye ~~ \(type(of: self.current!)) ~~, you're beautiful\n")
      self.current = nil
      self._isBusy = false
    }

  }

  func look() {
    print("[\(type(of: self.current!))]\n")
  }
}
