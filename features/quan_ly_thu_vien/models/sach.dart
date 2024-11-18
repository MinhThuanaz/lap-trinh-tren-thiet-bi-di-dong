//sach thu vien
class Sach{
  String _maSach;
  String _tenSach;
  String _tacGia;
  bool _trangThai; //true la da muon, false la chua muon

  //constructor
  Sach(this._maSach, this._tenSach, this._tacGia, this._trangThai);

  //getters
  String get maSach => _maSach;
  String get tenSach => _tenSach;
  String get tacGia => _tacGia;
  bool get trangThai => _trangThai;

  //setters
  set maSach(String maSach){
    if(maSach.isNotEmpty){
      _maSach = maSach;
    }
  }

  set tenSach(String tenSach){
    if(tenSach.isNotEmpty){
      _tenSach = tenSach;
    }
  }

  set tacGia(String tacGia){
    if(tacGia.isNotEmpty){
      _tacGia = tacGia;
    }
  }

  set TrangThai(bool TrangThai){
    _trangThai = trangThai;
  }

  void hienThiThongTin(){
    print('ma sach: $_maSach');
    print('ten sach: $_tenSach');
    print('tac gia: $_tacGia');
    print('trang thai: $_trangThai');
  }

  String hienThiMuonSach(){
    if (_trangThai == true) return 'Da muon';
    return 'Chua muon';
  }
}