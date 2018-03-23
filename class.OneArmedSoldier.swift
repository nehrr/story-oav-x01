enum Weapons {
case GUN
case SABER
case BLADE
case IRON_BAR
}

class OneArmedSoldier: Figurine {
  var _name: String
  var _weapon: Weapons
  var type: String {
    get {
      return String(describing: OneArmedSoldier.self)
    }
  }

  convenience init() {
    self.init(name: "Clone", weapon: .IRON_BAR)
  }

  init(name: String, weapon: Weapons) {
    self._name = name
    self._weapon = weapon

    print("""
    New one-armed-soldier \(self._name) using \(self._weapon) and singing -->
    Arittake no yume wo kakiatsume
    Sagashimono wo sagashi ni yuku no sa ONE CODE
    Rashinban nante juutai no moto
    Netsu ni ukasare kaji wo toru no sa

    """)
  }

  func isMoved() {
    print("Jetto Wōku!")
  }
}
