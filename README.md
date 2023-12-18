# Learn-Dart-Program
## 1. Bắt đầu với Dart
Câu lệnh cơ bản Hello World trong Dart:
```Dart
main(List<String> args) {
  print('hello world');
  print('Hoc lam quen vơi Dart');
  print('Dart co ban');
}
```
Các câu lệnh sẽ thực thi trong hàm chính là hàm **main()** và câu lệnh in ra màn hình là **print('đoạn text')**.Lưu ý dấu **;** ở cuối mỗi câu lệnh.
## 2. Biến, kiểu dữ liệu trong Dart
```Dart
main(List<String> args) {
  var name;
  String name2 = 'Word';
  num year = 2023;
  name = 'Hello';
  print(name);
  print(name2);
  print(year);
  print('Lam quen vs Dart');
  const num pI = 3.14;
  print(pI);
}
```
Khai báo ```Var + tên biến``` là  cách khai báo kiểu dữ liệu kiểu Dynamic nghĩa là biến sẽ có thể có nhiều loại dữ liệu ( strin , num , bool,...) tùy theo giá trị ta gán cho biến là kiểu dữ liệu nào như ví dụ trên biến name dc khai báo là var name thì khi gán name là giá trị chuỗi 'Hello' thì trình biên dịch vẫn tự động hiểu.
Ngoài ra còn có kiểu dữ liệu **num**; **String** và **List**.



