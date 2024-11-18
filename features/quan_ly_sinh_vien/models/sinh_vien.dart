
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