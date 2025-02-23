import 'dart:io';

class SinhVien {
  String? ten;
  int? tuoi;
  String? masinhvien;
  SinhVien(this.ten, this.tuoi, this.masinhvien);
  void inThongTin() {
    print("ten;$ten");
  }
}

void main(List<String> args) {
  List<SinhVien> danhSachSinhVien = [];
  SinhVien sv1 = SinhVien("aloo", 18, "sv001");
  danhSachSinhVien.add(sv1);
  SinhVien sv2 = SinhVien("alala", 19, "sv002");
  danhSachSinhVien.add(sv2);
  for (var sv in danhSachSinhVien) {
    sv.inThongTin();
  }
}

void inputStudent() {
  stdout.write('nhap vao day ten sinh vien:');
  String ten = stdin.readLineSync() ?? "";
  stdout.write('nhap vao tuoi sinh vien');
  int tuoi = int.parse((stdin.readLineSync() ?? "0"));
  stdout.write(('nhap ma sinh vien:'));
  String masinhvien = stdin.readLineSync() ?? "";
  SinhVien sv = SinhVien(
    ten,
    tuoi,
    masinhvien,
  );
  return inputStudent() ;
}
