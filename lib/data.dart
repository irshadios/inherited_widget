class Data implements Database {
  String? _firstName;
  String? _lastName;

  void setName(a) {
    _firstName = a;
  }

  String getName() {
    return _firstName!;
  }

  String name() {
    String displayName = "Develoer Irshad zahur";
    return displayName;
  }

  String Phone() {
    String phoneNumber = "+917406834520";
    return phoneNumber;
  }
}

abstract class Database {
  String name();
  String Phone();
}
