# Learn-Dart-Program
### 1. Bắt đầu với Dart
- Câu lệnh cơ bản Hello World trong Dart:
```Dart
main(List<String> args) {
  print('hello world');
  print('Hoc lam quen vơi Dart');
  print('Dart co ban');
}
```
- Các câu lệnh sẽ thực thi trong hàm chính là hàm **main()** và câu lệnh in ra màn hình là **print('đoạn text')**.Lưu ý dấu **;** ở cuối mỗi câu lệnh.
### 2. Biến, kiểu dữ liệu trong Dart
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
Ngoài ra còn có kiểu dữ liệu **num**; **String** ; **Boolean** và **List** được dùng khi chỉ định rõ ràng kiểu dữ liệu của biến.
- Khi khai báo **const** thì giá trị của biến là hằng số không thay đổi được.
#### * Kiểu String
- Hàm **substring(start,end)** để lấy giá ký tự từ vị trí bắt đầu **(start)** đến ký tự trước vị trí kết thúc **(end)**. Chuỗi String x = "Hello" thì x.substring(0,3) = He.
- Hàm **length** dùng để lấy số ký tự bao gồm khoảng trắng của chuỗi.
- String trong dart là mảng ký tự nên có thể sử dụng như mảng các ký tự để lấy từng ký tự.
- Có thể dùng toán tử **+** để gộp các chuỗi lại với nhau.
- Có thể dùng toán tử **nhân** để lặp lại số lần của 1 chuỗi. Ví dụ ```String newString = name * 3;``` thì khi in chuỗi newString thì từ "Hello" sẽ lặp lại 3 lần.
- Hàm **trim()** dùng để loại bỏ các ký tự trắng ở đầu và cuối văn bản.
- Hàm **split()** dùng để chia nhỏ chuỗi theo 1 tiêu thức nào đó.  
  
#### * Kiểu number
- Hàm **toDouble()** dùng để convert kiểu dữ liệu **int** thành **double** ngoài ra còn có các hàm convert khác tùy theo kiểu dữ liệu convert mong muốn của người dùng.
- Hàm **round()** dùng để làm tròn số và kết quả trả về sẽ là số nguyên muốn kết quả trả về là số thực thì là hàm **roundtoDouble()**
- Có thể convert dữ liệu kiểu chuỗi sang int hoặc number bằng cách sau:
```Dart
main(List<String> args) {
  String stringNum = '2012';
  int? integer;
  double? realNumber;
  integer = int.parse(stringNum);
  realNumber = double.parse(stringNum);
  print(integer); //Ket qua 2012
  print(realNumber); //Ket qua 2012.0
}
```
- Hàm **random()** dùng để lấy 1 số ngẫu nhiên. ví dụ về lấy 1 số ngẫu nhiên từ 1 đến 10 ta thực hiện như sau:
  ```Dart
  main(List<String> args)
  {
  int randomNumber = Random().nextInt(10) + 1;
  print(randomNumber); // Kết quả sẽ chạy trong khoảng min = 1 và max = 10.  
#### * Kiểu List
- [tham khảo](http://o2.edu.vn/kieu-danh-sach-list-trong-dart/)
- [tham khảo 2](http://fxstudio.dev/list-type-dart-tour/))
- [tham khả0 3](https://200lab.io/blog/tu-hoc-ngon-dart-collection/)
- Lists: Được sử dụng để biểu diễn 1 tập các đối tượng. Cẩu trúc **List<Type> variable name** biểu diễn một nhóm các đối tượng được sắp xếp và có thiết kế giống như mảng (array) trong các ngôn ngữ khác.
- Để add thêm phần tử vào List đối tượng thì ta dùng cách sau:
```Dart
main(List<String> args) {
  List<String> names = ['Trọng', 'Hoàng'];
  names.add("Lê");
  print(names);
}
```
- Cách khai báo để List có 1 độ dài cố định:
  ```Dart
  void main() {
  var trangMieng = List.filled(4,'');
    
  trangMieng[0] = 'táo';
  trangMieng[1] = 'ổi';
  trangMieng[2] = 'xoài';
  trangMieng[3] = 'mít';
}
```
- Dùng hàm **add()**  như trên để add phần từ mới vào index cuối cùng hoặc cũng có thể add phần tử mới vào 1 index cụ thể như sau:

```Dart
  main(List<String> args) {
  List<String> names = ['Lê', 'Trọng'];
  names.insert(1, "Hoàng");
  print(names);
}
```
- Dùng hàm **insert(index, element)** để thêm phần từ vào 1 vị trí cụ thể, ngoài ra còn có thể dùng hàm **addAll()** và **insertAll()** để thêm nhiều phần tử 1 lúc với cách dùng tương tự.
- Dùng hàm **remove(element)** để xóa phần tử theo đích danh ra khỏi List hoặc **remove(index)** để xóa phần tử theo vị trí trong List, **removeLast()** để xóa phần tử cuối cùng, **removeRange(start,end)** để xóa trong 1 range, **clear()** để xóa hết tất cả phần tử, hàm **replaceRange()** để thay thế phần tử.
- Cách duyệt và in lần lượt từng phần tử trong 1 list như sau:
 ```Dart 
  main(List<String> args) {
  List<String> names = ['Lê', 'Hoàng', 'Trọng'];
  names.forEach((element) {
    print(element);
  });
}
```
- Hàm forEach ở trên là có chức năng duyệt lần lượt từng phần tử và lấy ra từng phần tử để tao thao tác trong ngoặc {}, nên ngoài việc in từng phần tử ta có thể thao tác tùy ý theo từng phần tử tùy theo mục đích sử dụng.
### 3. Hàm trong Dart
- Cấu trúc rút gọn của hàm có giá trị trả về ```returnType functionName(parameter) => function body.``` Ví dụ ``` num sum (num a, num b) => a + b.```
- Một hàm có thế có hai kiểu tham số: required parameter và optional parameter . Required parameter được liệt kê trước theo sau là những optional parameter. Optional parameter có thể là named parameters hoặc positional parameters. Trong một hàm, những named parameters được khai báo bằng dấu ngoặc nhọn {}:
```Dart
main(List<String> args) {
  callMyName(name: 'Trọng');
}

void callMyName({String a = 'My name is ', String? name}) {
  print('$a $name');
}
```
- Trong ví dụ trên String a và String name là những named parameters nên được khai báo trong dấu ngoặc {} và param a được khai báo mặc định là 'My name is' còn param name phải được khai báo có thể null thì trình biên dịch mới chạy và nếu param đã có giá trị mặc định thì có thể truyền giá trị khác hoặc không còn param chưa truyền giá trị thì bắt buộc phải truyền vào. Hoặc hàm trên có thể viết là ```void callMyName({String a = 'My name is ', required String name}) thì param name cũng phải dc truyền vào giá trị để chương trình thực thi.
- Sau đây là ví dụ về 1 tham số positional parameters:
  ```Dart
  String say(String from, String msg, [String? device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;}

- Tham số tùy chọn được đặt trong cặp ngoặc [] và tùy theo nhu cầu sử dụng mà có thể chọn sử dụng tham số đó bằng cách truyền giá trị vào hoặc mặc định là null, giúp cho việc tái sử dụng hàm với số lượng tham số tùy chọn khác nhau tùy theo mục đích sử dụng.

 ### 4. Class and Object. 
  [tham khảo](http://200lab.io/blog/tu-hoc-ngon-ngu-dart-classes/)
  
  










