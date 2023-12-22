import 'dart:io';

class Vehicle {
  num? _id;
  String? _manufacturer;
  num? _year;
  num? _price;
  String? _color;
  Vehicle(this._id, this._manufacturer, this._year, this._price,
      this._color); //Hàm tạo Vehicle
  num? get iD => this._id;
  void ouput() => print(
      'Mã id của xe là: $_id \nHãng sản xuất là: $_manufacturer\nNăm sản xuất là: $_year\nGía bán là: $_price\nMàu sắc là: $_color');
}

class Car extends Vehicle {
  num? _amounOfSeat;
  String? _typeOfEngine;
  Car(num? id, String? manufacturer, num? year, num? price, String? color,
      this._amounOfSeat, this._typeOfEngine)
      : super(id, manufacturer, year, price, color);
  void output() {
    print('======================================');
    super.ouput();
    print(
        "Số lượng chỗ ngồi là: ${this._amounOfSeat}\nKiểu động cơ là\n${this._typeOfEngine}");
  }

  static void erase(List<Car> dataCar, num id) {
    dataCar.forEach((element) {
      if (element.iD == id) {
        dataCar.remove(element);
      }
      ;
    });
  }
}

class Bike extends Vehicle {
  num? _power;
  Bike(num? id, String? manufacturer, num? year, num? price, String? color,
      this._power)
      : super(id, manufacturer, year, price, color);
  void output() {
    print('======================================');
    super.ouput();
    print('Công suất của xe là: ${this._power}');
  }
}

class Truck extends Vehicle {
  num? _loading;
  Truck(num? id, String? manufacturer, num? year, num? price, String? color,
      this._loading)
      : super(id, manufacturer, year, price, color);

  void output() {
    print('======================================');
    super.ouput();
    print('Công suất của xe là: ${this._loading}');
  }
}

class TrafficManagement {
  List<Car> dataCar = [];
  List<Bike> dataBike = [];
  List<Truck> dataTruck = [];
  void addInfor() {
    stdout.write('Nhập số lượng xe: ');
    num amount = int.parse(stdin.readLineSync()!);
    for (int i = 0; i < amount; i++) {
      stdout.write('Nhập dữ liệu xe thứ ${i + 1}\n');
      stdout.write('Nhập id: ');
      num id = int.parse(stdin.readLineSync()!);
      stdout.write('Nhập hãng sản xuất: ');
      String? manufacturer = stdin.readLineSync();
      stdout.write('Nhập năm sản xuất: ');
      num year = int.parse(stdin.readLineSync()!);
      stdout.write('Nhập giá tiền: ');
      num price = int.parse(stdin.readLineSync()!);
      stdout.write('Nhập màu sắc: ');
      String? color = stdin.readLineSync();
      stdout.write('Nhập loại xe: ');
      String? typeVehicle = stdin.readLineSync();
      if (typeVehicle == "Car") {
        stdout.write('Nhập số lượng chỗ ngồi: ');
        num amountOfSeat = int.parse(stdin.readLineSync()!);
        stdout.write('Nhập kiểu động cơ: ');
        String? typeOfEngine = stdin.readLineSync();
        Car carTemp = Car(
            id, manufacturer, year, price, color, amountOfSeat, typeOfEngine);
        dataCar.add(carTemp);
      } else if (typeVehicle == "Bike") {
        stdout.write('Nhập công suất xe: ');
        num power = int.parse(stdin.readLineSync()!);
        Bike bikeTemp = Bike(id, manufacturer, year, price, color, power);
        dataBike.add(bikeTemp);
      } else {
        stdout.write('Nhập trọng tải xe: ');
        num loading = int.parse(stdin.readLineSync()!);
        Truck truckTemp = Truck(id, manufacturer, year, price, color, loading);
        dataTruck.add(truckTemp);
      }
    }
  }

  void output() {
    if (!dataCar.isEmpty) {
      dataCar.forEach((element) {
        element.output();
      });
    }
    if (!dataBike.isEmpty) {
      dataBike.forEach((element) {
        element.output();
      });
    }

    if (dataTruck.isEmpty == false) {
      dataTruck.forEach((element) {
        element.output();
      });
    }
  }

  void erase(num? id) {
    int index = dataCar.indexWhere((element) => element.iD == id);
    if (index != -1) dataCar.removeAt(index);
    int index2 = dataBike.indexWhere((element) => element.iD == id);
    if (index2 != -1) dataBike.removeAt(index);
    int index3 = dataTruck.indexWhere((element) => element.iD == id);
    if (index3 != -1) dataTruck.removeAt(index);
  }
}

void main(List<String> args) {
  var temp = TrafficManagement();
  temp.addInfor();
  temp.output();
  stdout.write('Nhập vào ID của xe cần xóa dữ liệu: ');
  num isEraseId = int.parse(stdin.readLineSync()!);
  print(isEraseId);
  temp.erase(isEraseId);
  temp.output();
}
