class Sugar: Person {
  static let instance: Sugar = Sugar()

  var _name: String = ""
  var _age: Int = 0

  func getName() -> String {
    return self._name
  }

  func getAge() -> Int {
    return self._age
  }

  func setAge(age: Int) {
    self._age = age
  }

  func setName(name: String) {
    self._name = name
  }

  private init() {
  }

  init(name: String) {
    Sugar.instance._name = name
  }

  func get() {

  }
}
