void main() {
  Counter c1 = Counter();
  print(c1.hashCode);
  Counter c2 = Counter();
  print(c2.hashCode);
  Counter c3 = Counter();
  print(c3.hashCode);

  Singleton s1 = Singleton();
  Singleton s2 = Singleton();
  s1.showInfo();
  s2.showInfo();
}

class Counter {
  static int i = 0;
  Counter() {
    // i++;
    print(++i);
  }
}

class Singleton {
  static Singleton? _instance;
  Singleton._internal();
  factory Singleton() {
    _instance ??= Singleton._internal();
    return _instance!;
  }

  void showInfo() {
    print("Singleton: $hashCode");
  }
}