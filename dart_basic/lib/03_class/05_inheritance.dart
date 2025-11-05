void main() {

  Dog dog = Dog("댕댕이");
  print(dog);
  dog.sound();
  dog.bark();
}

class Animal {
  late String _name;
  Animal.withVal(this._name);
  void sound() {
    print('$_name sound~!');
  }
  @override
  String toString() {return _name;}
}
class Dog extends Animal {
  Dog(super.name) : super.withVal();
  void bark() {
    print("$_name bow bow!");
  }
}