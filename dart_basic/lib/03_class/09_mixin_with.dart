void main() {
  C c = C();
  c.doit();
}

mixin A {
  int value = 100;
  void methodA() {
    print("A");
  }
}

mixin B {
  int value = 200;
  void methodA() {
    print("B");
  }
}

class C with A, B {
  void doit() {
    methodA();
    print(value);
  }
}

class Birds {
  late String _name;

  String get name => _name;

  set name(String value) {
    _name = value;
  }
  void layEgg() {
    print("egg");
  }
}

class Fish {
  late String _name;

  String get name => _name;

  set name(String value) {
    _name = value;
  }
}

mixin Flyable on Birds {
  void fly() {
    print("fly");
  }
}

mixin Swimmable {
  void swim();
}

class Duck extends Birds with Flyable, Swimmable {
  @override
  void swim() {
    // TODO: implement swim
    print("swim");
  }
}