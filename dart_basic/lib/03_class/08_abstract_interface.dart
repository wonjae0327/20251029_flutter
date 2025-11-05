abstract class Flyable {
  void fly();
}
abstract interface class Swimmable {
  void swim();
}
interface class Groundable {
  void run() {
    print("run");
  }
}
class Diggable {
  void dig() {
    print("dig");
  }
}
class Mammal {
  void eat() => print("eat");
}
class Bat extends Mammal implements Flyable {
  @override
  void fly() {
    // TODO: implement fly
    print("bat eat and fly");
  }
}
class Eagle implements Flyable {
  @override
  void fly() {
    // TODO: implement fly
    print("fly");
  }
}

class Dog extends Mammal implements Groundable {
  @override
  void run() {
    // TODO: implement run
    print("wal");
  }
}
class Dolphin implements Swimmable, Flyable {
  @override
  void swim() {
    // TODO: implement swim
    print("swim");
  }

  @override
  void fly() {
    // TODO: implement fly
    print("jump");
  }
}

void main() {
  Flyable eagle = Eagle();
  Flyable dolphin = Dolphin();
  Flyable bat = Bat();
  List<Flyable> flys = [];
  flys.add(Eagle());
  flys.add(Dolphin());
  flys.add(Bat());
  print("+++++++++++++++++++++++");
  for(dynamic fly in flys) {
    fly.fly();
  }
  List<Mammal> mammals = [];
  mammals.add(Dog());
  mammals.add(Bat());

  eagle.fly();
  dolphin.fly();
}