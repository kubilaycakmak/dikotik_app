class User {
  String name;
  String age;
  String sex;
  double leftScore;
  double rightScore;
  double bothScore;
  double selectField;
  double selectSex;

  User({
    this.name,
    this.age,
    this.sex,
    this.leftScore,
    this.rightScore,
    this.bothScore,
    this.selectField,
    this.selectSex,
  });

  String get getName => name;

  set setName(String newName) {
    name = newName;
  }

  String get getAge => age;

  set setAge(String newAge) {
    age = newAge;
  }

  String get getSex => sex;

  set setSex(String newSex) {
    sex = newSex;
  }

  double get getLeftScore => leftScore;

  set setLeftScore(double newScore) {
    leftScore = newScore;
  }

  double get getRightScore => rightScore;

  set setRightScore(double newRightScore) {
    rightScore = newRightScore;
  }

  double get getBothScore => bothScore;

  set setBothScore(double newDoubleScore) {
    bothScore = newDoubleScore;
  }

  double get getSelectSex => selectSex;

  set setSelectSex(double newSelectSex) {
    selectSex = newSelectSex;
  }

  double get getSelectField => selectField;

  set setSelectField(double newSelectField) {
    selectField = newSelectField;
  }
  
}
