import 'dart:io';

class InvalidFullNameException extends IOException {}

class InvalidDOBException implements IOException {}

class InvalidPhoneNumberException implements IOException {}

class Student {
  String _fullName = '';
  String _doB = '';
  String? _sex;
  String _phone = '';
  String? _universityName;
  String? _gradeLevel;

  void nameEX() {
    while (this._fullName.length < 10 || this._fullName.length > 50) {
      try {
        stdout.write('Nhập Họ và tên: ');
        this._fullName = stdin.readLineSync().toString();
        if (this._fullName.length < 10 || this._fullName.length > 50) {
          throw InvalidFullNameException;
        }
      } catch (e) {
        print('Lỗi nhập Họ và tên $e');
      }
    }
  }

  void doBEX() {
    while (this._doB == '') {
      try {
        stdout.write('Nhập ngày tháng năm sinh: ');
        this._doB = stdin.readLineSync().toString();
        List<String> arrDOB = this._doB.split('/');

        if (!(arrDOB.length == 3 &&
            int.parse(arrDOB[0]).runtimeType == int &&
            int.parse(arrDOB[0]) > 0 &&
            int.parse(arrDOB[0]) <= 31 &&
            int.parse(arrDOB[1]).runtimeType == int &&
            int.parse(arrDOB[1]) > 0 &&
            int.parse(arrDOB[1]) <= 12 &&
            int.parse(arrDOB[2]).runtimeType == int &&
            int.parse(arrDOB[2]) > 1990 &&
            int.parse(arrDOB[2]) < 2000)) {
          throw InvalidDOBException;
        }
      } catch (e) {
        print('Lỗi nhập ngày tháng năm sinh $e');
        this._doB = '';
      }
    }
  }

  void phoneEX() {
    while (this._phone == '') {
      try {
        stdout.write('Nhập số điện thoại: ');
        this._phone = stdin.readLineSync().toString();

        if (!(int.parse(this._phone) == int &&
            this._phone.length == 10 &&
            this._phone.substring(1, 4) == '090' &&
            this._phone.substring(1, 4) == '098' &&
            this._phone.substring(1, 4) == '091' &&
            this._phone.substring(1, 4) == '031' &&
            this._phone.substring(1, 4) == '035' &&
            this._phone.substring(1, 4) == '038')) {
          throw InvalidPhoneNumberException;
        }
      } catch (e) {
        print('Lỗi nhập số điện thoại $e');
        this._phone = '';
      }
    }
  }

  void input() {
    print('!!!Nhập thông tin sinh viên!!!');
    this.nameEX();
    this.doBEX();
    stdout.write('Nhập giới tính: ');
    this._sex = stdin.readLineSync();
    this.phoneEX();
    stdout.write('Nhập tên trường đã học: ');
    this._universityName = stdin.readLineSync();
    stdout.write('Nhập xếp loại: ');
    this._gradeLevel = stdin.readLineSync();
  }

  void showMyInfor() {
    print('!!!Thông tin sinh viên là!!!');
    print(
        'Họ và tên: $_fullName\nNgày tháng năm sinh: $_doB\nGiới tính: $_sex\nSố điện thoại: $_phone\nTrường đã học: $_universityName\nXếp loại: $_gradeLevel\n');
  }
}

class GoodStudent extends Student {
  var _gpa;
  String? _bestRewardName;

  void input() {
    super.input();
    stdout.write('Nhập điểm trung bình học tập: ');
    this._gpa = double.parse(stdin.readLineSync()!);
    stdout.write('Nhập giải thưởng cao nhất từng đạt được: ');
    this._bestRewardName = stdin.readLineSync();
  }

  void showMyInfor() {
    super.showMyInfor();
    print(
        'Điểm trung bình học tập: $_gpa\nGiải thưởng cao nhất từng đạt được: $_bestRewardName\n');
  }
}

class NormalStudent extends Student {
  int? _englishScore;
  String? _entryTestScore;

  void input() {
    super.input();
    stdout.write('Nhập điểm Toeic: ');
    this._englishScore = int.parse(stdin.readLineSync()!);
    stdout.write('Nhập trung tâm cấp chứng chỉ: ');
    this._entryTestScore = stdin.readLineSync();
  }

  void showMyInfor() {
    super.showMyInfor();
    print(
        'Điểm Toeic: $_englishScore\nTrung tâm cấp chứng chỉc: $_entryTestScore\n');
  }
}

class Enroll {
  List<GoodStudent> _dataGood = [];
  List<NormalStudent> _dataNormal = [];
  GoodStudent tempGood = GoodStudent();
  NormalStudent tempNormal = NormalStudent();
  void ouput() {
    List<String> dataName = [];
    List<String> dataPhone = [];
    this._dataGood.forEach((element) {
      element._fullName;
      dataName.add(element._fullName);
      element._phone;
      dataPhone.add(element._phone);
    });
    this._dataNormal.forEach((element) {
      element._fullName;
      dataName.add(element._fullName);
      element._phone;
      dataPhone.add(element._phone);
    });
    dataName.sort((a, b) => b.compareTo(a));
    dataPhone.sort();
  }

  void collectStudent() {
    int n = 0;
    while (n < 11 || n > 15) {
      print("Nhập số lượng sinh viên muốn tuyển: ");
      n = int.parse(stdin.readLineSync()!);
    }

    if (n == this._dataGood.length) {
      print('Danh sách được chọn là: ');
      this._dataGood.forEach((element) {
        element.showMyInfor();
      });
    } else if (n < this._dataGood.length) {
      List<GoodStudent> dataCollection = [];
      for (int i = 0; i < n; i++) {
        List<double> dataGPA = [];
        this._dataGood.forEach((element) {
          dataGPA.add(element._gpa);
        });
        var max = dataGPA
            .reduce((value, element) => value > element ? value : element);
        var index = _dataGood.indexWhere((element) => element._gpa == max);
        dataCollection.add(_dataGood[index]);
        dataGPA.removeAt(dataGPA.indexOf(max));
        _dataGood.removeAt(index);
      }
      print('Danh sách được chọn là: ');
      dataCollection.forEach((element) {
        element.showMyInfor();
      });
    }
  }
}

void main(List<String> args) {
  Enroll schoolX = Enroll();
  var count = 0;
  while (count == 0) {
    print('Nhập số lượng thông tin sinh viên: ');
    count = int.parse(stdin.readLineSync()!);
    if (count < 1 || count > 15) {
      count = 0;
    }
  }

  for (int i = 0; i < count; i++) {
    print('Nhập xếp hạng tốt nghiệp (Good or Normal):');
    String? rank = stdin.readLineSync();
    if (rank == "Good") {
      schoolX.tempGood.input();
      schoolX._dataGood.add(schoolX.tempGood);
    } else {
      schoolX.tempNormal.input();
      schoolX._dataNormal.add(schoolX.tempNormal);
    }
    ;
  }
  for (var element in schoolX._dataGood) {
    element.showMyInfor();
  }
  for (var element in schoolX._dataNormal) {
    element.showMyInfor();
  }
}
