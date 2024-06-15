enum Classification {
  fristYear,
  secondYear,
  thirdYear,
  fourthYear,
  graduate,
}

enum ProgLanguage {
  dart,
  javs,
  javascript,
  python,
  cpp,
  csharp,
}

enum Major {
  cs,
  se,
  ds,
  ce,
}

class UserRecord {
  String email;
  String password;
  String name;
  String phone;
  int age;
  Classification classification;
  Major major;
  Map<ProgLanguage, bool>? progLanguage;

  UserRecord({
    this.email = " ",
    this.password = " ",
    this.name = " ",
    this.age = 18,
    this.phone = " ",
    this.classification = Classification.fristYear,
    this.major = Major.cs,
    this.progLanguage,
  }){
    progLanguage ??= {};

    for(var e in ProgLanguage.values){
      progLanguage! [e] ??= false;
    }
  }
}

List<UserRecord> fakeUserDB = [
  UserRecord(
    email: "1@uco.com",
    password: "111111",
    name: "Ada Lovelace",
    phone: "4059742000",
    age: 24,
    classification: Classification.graduate,
    major: Major.ce,
    progLanguage: {
      ProgLanguage.dart: true,
      ProgLanguage.cpp: true,
    }
  ),
  UserRecord(
    email: "2@uco.com",
    password: "222222",
    name: "Charles Babbage",
    phone: "4059742345",
    age: 18,
    classification: Classification.secondYear,
    major: Major.se,
    progLanguage: {
      ProgLanguage.csharp: true,
      ProgLanguage.javs: true,
      ProgLanguage.javascript: true,
    }
  ),
];
