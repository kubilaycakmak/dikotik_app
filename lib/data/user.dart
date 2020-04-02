class User {
  String name;
  String age;
  String sex;
  double leftScore;
  double rightScore;
  double bothLeftScore;
  double bothRightScore;
  double selectField;
  double selectSex;

  User({
    this.name,
    this.age,
    this.sex,
    this.leftScore,
    this.rightScore,
    this.bothLeftScore,
    this.bothRightScore,
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

  double get getBothLeftScore => bothLeftScore;

  set setBothLeftScore(double newDoubleScore) {
    bothLeftScore = newDoubleScore;
  }

  double get getBothRightScore => bothRightScore;

  set setBothRightScore(double newDoubleScore) {
    bothRightScore = newDoubleScore;
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
