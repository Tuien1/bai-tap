import 'dart:io';

void main() {
  List tenhocsinh = [];
  while (true) {
    print('text menu');
    print('1,nhap ten hoc sinh');
    print('2,danh sach hoc sinh');
    print('3,sap xep danh sach ');
    print('0,thoat');
    var choice = stdin.readLineSync();
    switch (choice) {
      case '1':
        print("nhap ten cua ban");
        var name = stdin.readLineSync();
        if (name != null && name.isNotEmpty) {
          print("chao ban $name");
        } else {
          print("ban chua nhap gi");
        }
        tenhocsinh.add(name);

      case '2':
        print('danh sach hoc sinh');
        for (var name in tenhocsinh) {
          print(name);
        }
        break;
      case '3':
        print('danh sach da sap xep');
        tenhocsinh.sort(); //sap xep tu a->z
        for (var n in tenhocsinh) {
          print("-$n");
        }
        break;
      default:
        print('thoat');
        exit(0);
    }
  }
}
