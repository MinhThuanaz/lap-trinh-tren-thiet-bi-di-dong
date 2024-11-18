//Lop Sinh vien
class Student {
  String _hoten;
  int _tuoi;
  String _maSV;
  double _diemtb;

  //constructor
  Student(this._hoten, this._tuoi, this._maSV, this._diemtb);

  //getter
  String get hoTen => _hoten;
  int get Tuoi => _tuoi;
  String get MaSV => _maSV;
  double get Dtb => _diemtb;

  //setter
  set hoTen(String hoTen){
    if(hoTen.isNotEmpty){
      _hoten = hoTen;
    }
  }

  set Tuoi(int Tuoi){
    if(Tuoi > 0){
      _tuoi = Tuoi;
    }
  }

  set MaSV(String MaSV){
    if(MaSV.isNotEmpty && MaSV.length == 8){
      _maSV = MaSV;
    }
  }

  set Dtb(double Dtb){
    _diemtb = Dtb;
  }

  void hienThiThongTin(){
    print('Ho ten: $_hoten');
    print('Tuoi: $_tuoi');
    print('Ma Sinh vien: $_maSV');
    print('Diem tb: $_diemtb');
  }

  String xepLoai(){
    if(_diemtb >= 8.0) return 'Gioi';
    if(_diemtb >= 6.5) return 'Kha';
    if(_diemtb >= 5.0) return 'Trung binh';
    return 'Yeu';
  }

}

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