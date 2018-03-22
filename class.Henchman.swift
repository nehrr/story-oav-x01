class Henchman {
  var _nickname: String

  var nickname: String {
    get {
      return _nickname
    }
    //Default set parameter is newValue
    set{
      _nickname = newValue
    }
  }

  init(nickname: String) {
    self._nickname = nickname
  }

  func pack(packaging: Packaging, toy: Toy) {
    // if (!packaging.isOpen && !(packaging is GiftWrap)) {
    //   print("Sorry this package is not open")
    //   return
    // }

    guard packaging.isOpen || packaging is GiftWrap else {
      print("Sorry this package is not open")
      return
    }

    if(packaging.toy != nil) {
      print("Sorry this package already filled")
      return
    }

    packaging.insert(toy: toy)
    print("Yeaaaah! Just packing the toy ~~ \(toy.type) ~~")
  }

  func unpack(packaging: Packaging) -> Toy? {
    if (packaging.isOpen || packaging.toy == nil) {
      print("Sorry this package is already empty")
      return nil
    }

    let myToy: Toy = packaging.toy!

    packaging.isOpen = false
    packaging.toy = nil
    print("Ooooooh! Just unpacking the toy ~~ \(myToy.type) ~~")

    return myToy
  }

  func put(furniture: Furniture, obj: Object) {
    let res: Bool = furniture.put(obj: obj)

    if (res) {
      print("Well! I'm putting object ~~ \(type(of: obj)) ~~ on ~~ \(type(of: furniture)) ~~")
    } else {
      print("Oh, no! The belt is full")
    }
  }

  func take(furniture: Furniture) {
    let obj: Object? = furniture.take()

    if (obj != nil) {
      print("Well! I'm taking object ~~ \(type(of: obj)) ~~ from ~~ \(type(of: furniture)) ~~")
    } else {
      print("Oh, no! There is nothing to take")
    }
  }
}
