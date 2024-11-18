 import '../models/sinh_vien.dart';
 import '../models/lop_hoc.dart';

 //test
  void main(){
    var sv = Student('phan hoang', 21, 'SV001', 8.5);
    print('test getter: ${sv.hoTen}');
    sv.hoTen = 'phan hoang minh thuan';
    print('sau khi test: ${sv.hoTen}');
    print('Xep loai: ${sv.xepLoai()}');

    var lop = LopHoc('21DTHD5');
    lop.themSinhVien (Student('A', 21, 'SV001', 8.5));
    lop.themSinhVien (Student('B', 22, 'SV002', 7));
    lop.themSinhVien (Student('C', 24, 'SV003', 6.5));
    lop.themSinhVien (Student('D', 25, 'SV005', 9));
    lop.themSinhVien (Student('E', 27, 'SV004', 4));
    lop.hienThiDanhSach();
  }