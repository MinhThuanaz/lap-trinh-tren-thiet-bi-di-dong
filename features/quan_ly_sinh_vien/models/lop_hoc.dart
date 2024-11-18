import 'sinh_vien.dart';

//Lop hoc
class LopHoc{
  String _tenLop;
  List<Student> _danhsachSV = [];

  LopHoc(this._tenLop);

  //getters
  String get tenLop => _tenLop;
  List<Student> get DanhsachSV => _danhsachSV;

  //setters
  set tenLop(String tenLop){
    if(tenLop.isNotEmpty){
      _tenLop = tenLop;
    }
  }
  
  //them sinh vien
  void themSinhVien(Student sv) => _danhsachSV.add(sv);

  void hienThiDanhSach(){
    print('\n-------------------------');
    print('\n-------------------------');
    print('Danh sach sinh vien lop $_tenLop');
    for (var sv in _danhsachSV){
      print('\n--------------------------');
      sv.hienThiThongTin();
      print('\nXep loai: ${sv.xepLoai()}');
    }
  }

}