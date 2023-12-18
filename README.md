# Learn-Dart-Program
## 1. Bắt đầu với Dart
- Câu lệnh cơ bản Hello World trong Dart:
```Dart
main(List<String> args) {
  print('hello world');
  print('Hoc lam quen vơi Dart');
  print('Dart co ban');
}
```
- Các câu lệnh sẽ thực thi trong hàm chính là hàm **main()** và câu lệnh in ra màn hình là **print('đoạn text')**.Lưu ý dấu **;** ở cuối mỗi câu lệnh.
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
- Khai báo ```Var + tên biến``` là  cách khai báo kiểu dữ liệu kiểu Dynamic nghĩa là biến sẽ có thể có nhiều loại dữ liệu ( strin , num , bool,...) tùy theo giá trị ta gán cho biến là kiểu dữ liệu nào như ví dụ trên biến name dc khai báo là var name thì khi gán name là giá trị chuỗi 'Hello' thì trình biên dịch vẫn tự động hiểu.
Ngoài ra còn có kiểu dữ liệu **num**; **String** và **List** được dùng khi chỉ định rõ ràng kiểu dữ liệu của biến.
- Khi khai báo **const** thì giá trị của biến là hằng số không thay đổi được.
### * Kiểu String
- Hàm **substring(start,end)** để lấy giá ký tự từ vị trí bắt đầu **(start)** đến ký tự trước vị trí kết thúc **(end)**. Chuỗi String x = "Hello" thì x.substring(0,3) = He.
- Hàm **length** dùng để lấy số ký tự bao gồm khoảng trắng của chuỗi.
- String trong dart là mảng ký tự nên có thể sử dụng như mảng các ký tự để lấy từng ký tự.
- Có thể dùng toán tử **+** để gộp các chuỗi lại với nhau.
- Có thể dùng toán tử **nhân** để lặp lại số lần của 1 chuỗi. Ví dụ ```String newString = name * 3;``` thì khi in chuỗi newString thì từ "Hello" sẽ lặp lại 3 lần.
- Hàm **trim()** dùng để loại bỏ các ký tự trắng ở đầu và cuối văn bản.
- Hàm **split()** dùng để chia nhỏ chuỗi theo 1 tiêu thức nào đò.
- 










