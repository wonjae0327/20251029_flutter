void main() {
  Idol idol = Idol("IVE", 5);
  idol.sayIdol();
  idol.sayMembersCount();

  Idol blackPink = Idol("black", 3)
  ..sayIdol()
  ..sayMembersCount();
}

class Idol {
  final String name;
  final int membersCount;
  Idol(this.name, this.membersCount);

  void sayIdol() {
    print("$name");
  }

  void sayMembersCount() {
    print("$membersCount 명");
  }
}