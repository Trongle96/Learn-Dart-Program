import 'dart:io';

class Certificate {
  int? _certificatedID;
  String? _certificateName;
  String? _certificateRank;
  String? _certificatedDate;

  void input() {
    stdout.write('\nNhập số hiệu chứng chỉ: ');
    this._certificatedID = int.parse(stdin.readLineSync()!);
    stdout.write('\nNhập tên chứng chỉ: ');
    this._certificateName = stdin.readLineSync();
    stdout.write('\nNhập xếp loại chứng chỉ: ');
    this._certificateRank = stdin.readLineSync();
    stdout.write('\nNhập ngày cấp chứng chỉ: ');
    this._certificatedDate = stdin.readLineSync();
  }

  void output() => print(
      'Số hiệu chứng chỉ: $_certificatedID\nTên chứng chỉ: $_certificateName\nXếp loại chứng chỉ $_certificateRank\nNgày cấp chứng chỉ: $_certificatedDate');
}

abstract class Employee {
  num? _id, _phone;
  String? _fullName, _birthDay;
  String? _type, _email;

  List<Certificate> _dataCertificate = [];

  static int count = 1;

  void showMe();
  get iD => this._id;

  Employee(
    this._id,
    this._phone,
    this._fullName,
    this._birthDay,
    this._email,
    this._type,
  );

  void showInfo() {
    print('<Thông tin nhân viên thứ $count>');
    print(
        'Mã nhân viên là: $_id\nHọ và tên là: $_fullName\nNgày sinh là: $_birthDay\nSố điện thoại là: $_phone\nEmail nhân viên là: $_email\nLoại nhân viên là: $_type');
    count++;
  }
}

class Experience extends Employee {
  num? _expInYear;
  String? _proSkill;
  Experience(num? id, num? phone, String? fullName, String? birthday,
      String? email, String? type)
      : super(id, phone, fullName, birthday, email, type);

  @override
  void showMe() {
    stdout.write('\nNhập số năm kinh nghiệm: ');
    this._expInYear = int.parse(stdin.readLineSync()!);
    stdout.write('\nNhập kỹ năng chuyên môn: ');
    this._proSkill = stdin.readLineSync();
    stdout.write('\nNhập số lượng bằng cấp: ');
    int? numCertificate = int.parse(stdin.readLineSync()!);
    for (int i = 0; i < numCertificate; i++) {
      Certificate temp = Certificate();
      temp.input();
      (super._dataCertificate).add(temp);
    }
  }

  @override
  get iD => super.iD;
}

class Fresher extends Employee {
  String? _graduationDate;
  String? _graduationRank;
  String? _education;

  Fresher(
    num? id,
    num? phone,
    String? fullName,
    String? birthday,
    String? email,
    String? type,
  ) : super(id, phone, fullName, birthday, email, type);

  @override
  void showMe() {
    stdout.write('\nNhập thời gian tốt nghiệp: ');
    this._graduationDate = stdin.readLineSync();
    stdout.write('\nNhập xếp loại tốt nghiệp: ');
    this._graduationRank = stdin.readLineSync();
    stdout.write('\nNhập trường tốt nghiệp: ');
    this._education = stdin.readLineSync();
    stdout.write('\nNhập số lượng bằng cấp: ');
    int? numCertificate = int.parse(stdin.readLineSync()!);
    for (int i = 0; i < numCertificate; i++) {
      Certificate temp = Certificate();
      temp.input();
      (super._dataCertificate).add(temp);
    }
  }

  @override
  get iD => super.iD;
}

class Intern extends Employee {
  String? _major;
  num? _semester;
  String? _universityName;

  Intern(
    num? id,
    num? phone,
    String? fullName,
    String? birthday,
    String? email,
    String? type,
  ) : super(id, phone, fullName, birthday, email, type);

  @override
  void showMe() {
    stdout.write('\nNhập chuyên nghành đang học: ');
    this._major = stdin.readLineSync();
    stdout.write('\nNhập học kì đang học: ');
    this._semester = int.parse(stdin.readLineSync()!);
    stdout.write('\nNhập trường đang học: ');
    this._universityName = stdin.readLineSync();
    stdout.write('\nNhập số lượng bằng cấp: ');
    int? numCertificate = int.parse(stdin.readLineSync()!);
    for (int i = 0; i < numCertificate; i++) {
      stdout.write('\nNhập bằng cấp thứ ${i + 1}: ');
      Certificate temp = Certificate();
      temp.input();
      (super._dataCertificate).add(temp);
    }
  }

  @override
  void showInfo() {
    super.showInfo();
    print(
        'Chuyên ngành đang học là: $_major\nTrường đang học là: $_universityName\nHọc kì đang học là: $_semester\n');
    super._dataCertificate.forEach((element) {
      element.output();
    });
  }

  @override
  get iD => super.iD;
}

void main(List<String> args) {
  List<Experience> dataExperience = [];
  List<Fresher> dataFresher = [];
  List<Intern> dataIntern = [];
  List<int> dataID = [];
  stdout.write('Nhập số lượng nhân viên: ');

  num? count = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < count; i++) {
    print('\nNhập thông tin nhân viên thứ ${i + 1}');
    stdout.write('\nNhập id nhân viên: ');
    num? id = int.parse(stdin.readLineSync()!);
    var phone;
    try {
      stdout.write('\nNhập số điện thoại nhân viên: ');
      phone = int.parse(stdin.readLineSync()!);
      throw Exception('Lỗi nhập sai định dạng sđt: ');
    } on Exception catch (e) {
      print('!!!Nhập sai định dạng của số điện thoại yêu cầu nhập lại');
    }

    stdout.write('\nNhập sinh nhật nhân viên: ');
    String? birthDay = stdin.readLineSync();
    stdout.write('\nNhập tên nhân viên: ');
    String? fullName = stdin.readLineSync();
    stdout.write('\nNhập email nhân viên: ');
    String? email = stdin.readLineSync();
    stdout.write(
        '\nNhập loại nhân viên ( 0: Experience, 1: Fresher , 2: Intern ): ');
    int? check = int.parse(stdin.readLineSync()!);

    switch (check) {
      case 0:
        String? type = "Experience";
        var temp = Experience(id, phone, fullName, birthDay, email, type);
        temp.showMe();
        dataExperience.add(temp);
        dataID.add(temp.iD);
        break;
      case 1:
        String? type = "Fresher";
        var temp = Fresher(id, phone, fullName, birthDay, email, type);
        temp.showMe();
        dataFresher.add(temp);
        dataID.add(temp.iD);
        break;
      case 2:
        String? type = "Intern";
        var temp = Intern(id, phone, fullName, birthDay, email, type);
        temp.showMe();
        dataIntern.add(temp);
        dataID.add(temp.iD);
        break;
    }
  }
  //Show thông tin tất cả nhân viên.
  if (!(dataExperience.isEmpty)) {
    dataExperience.forEach((element) {
      element.showInfo();
    });
  }

  if (!(dataFresher.isEmpty)) {
    dataFresher.forEach((element) {
      element.showInfo();
    });
  }

  if (!(dataIntern.isEmpty)) {
    dataIntern.forEach((element) {
      element.showInfo();
    });
  }

  stdout.write(
      '\nNhập loại nhân viên ( 0: Experience, 1: Fresher , 2: Intern ): ');
  int? checkNV = int.parse(stdin.readLineSync()!);
  switch (checkNV) {
    case 0: //Show thông tin nhân viên Experience
      dataExperience.forEach((element) {
        print(element);
      });
    case 1: //Show thông tin nhân viên Fresher
      dataFresher.forEach((element) {
        print(element);
      });
    case 2: //Show thông tin nhân viên Intern
      dataIntern.forEach((element) {
        print(element);
      });
  }
}
