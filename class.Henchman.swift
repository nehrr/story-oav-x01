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

  func unpack(packaging: Packaging) {
    if (!packaging.isOpen && packaging.toy == nil) {
      print("Sorry this package is already empty")
      return
    }

    var myToy = packaging.toy
    
    packaging.isOpen = false
    packaging.toy = nil
    print("Ooooooh! Just unpacking the toy ~~ \(myToy.type) ~~")

    return myToy
  }
}
