class Pony: Toy {
  private static var _nb = 0
  private var _id: Int
  var type: String {
    get {
      return String(describing: Pony.self)
    }
  }

  init() {
    //Cannot call static on self, need classname
    Pony._nb += 1
    _id = Pony._nb
    print("""
    New pony [\(self._id)] singing -->
    Dou-double poney, j’fais izi money
    D’où tu m’connais ? Parle moi en billets violets
    Dou-double poney, j’fais izi money

    """)
  }

  func isMoved() {
    print("Daaaamn!")
  }
}
