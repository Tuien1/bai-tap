import 'dart:io';

class SinhVien {
  String maSinhVien;
  String hoten;
  int tuoi;
  double diemTrungBinh;

  SinhVien(this.hoten, this.tuoi, this.maSinhVien, this.diemTrungBinh);

  void hienThiThongTin() {
    print(
        '$maSinhVien | $hoten | $tuoi | $diemTrungBinh | ${kiemTraHocBong() ? "Có" : "Không"}');
  }

  bool kiemTraHocBong() {
    return diemTrungBinh >= 8.0;
  }
}

class StudentDataSource {
  List<SinhVien> getAllStudents() {
    return [
      SinhVien("Nam", 16, "sv001", 4.8),
      SinhVien("Trang", 16, "sv002", 6.5),
      SinhVien("Tuyen", 16, "sv003", 8.7),
    ];
  }
}

void hienThiDanhSach(List<SinhVien> danhSach) {
  print("\n===== DANH SÁCH SINH VIÊN =====");
  print("Mã SV  | Họ Tên | Tuổi | Điểm TB | Học Bổng");
  print("-----------------------------------------");
  for (var sv in danhSach) {
    sv.hienThiThongTin();
  }
}

void main() {
  StudentDataSource dataSource = StudentDataSource();
  List<SinhVien> danhSachSinhVien = dataSource.getAllStudents();

  while (true) {
    print("\n===== MENU =====");
    print("1. Hiển thị danh sách sinh viên");
    print("2. Sắp xếp theo Họ Tên");
    print("3. Sắp xếp theo Tuổi");
    print("4. Sắp xếp theo Điểm Trung Bình");
    print("5. Thoát");
    stdout.write("Chọn: ");
    String? luaChon = stdin.readLineSync();

    switch (luaChon) {
      case "1":
        hienThiDanhSach(danhSachSinhVien);
        break;
      case "2":
        danhSachSinhVien.sort((a, b) => a.hoten.compareTo(b.hoten));
        hienThiDanhSach(danhSachSinhVien);
        break;
      case "3":
        danhSachSinhVien.sort((a, b) => a.tuoi.compareTo(b.tuoi));
        hienThiDanhSach(danhSachSinhVien);
        break;
      case "4":
        danhSachSinhVien
            .sort((a, b) => b.diemTrungBinh.compareTo(a.diemTrungBinh));
        hienThiDanhSach(danhSachSinhVien);
        break;
      case "5":
        print("Thoát chương trình.");
        return;
      default:
        print("Lựa chọn không hợp lệ. Vui lòng thử lại.");
    }
  }
}
