//doc gia
import '../models/sach.dart';

class DocGia {
  String _maDocgia;
  String _tenDocgia;
  List<Sach> _danhsachMuon = [];

  DocGia(this._maDocgia, this._tenDocgia);

  //getters
  String get maDocgia => _maDocgia;
  String get tenDocgia => _tenDocgia;
  List<Sach> get danhsachMuon => _danhsachMuon;

  //setters
  set maDocgia(String maDocgia){
    if(maDocgia.isNotEmpty){
      _maDocgia = maDocgia;
    }
  }

  set tenDocgia(String tenDocgia){
    if(tenDocgia.isNotEmpty){
      _tenDocgia = tenDocgia;
    }
  }

  void muonSach(Sach s){
    if(s.trangThai){
      print('Sach ${s.tenSach} da co nguoi muon');
    } else {
      _danhsachMuon.add(s);
      s.trangThai==true;
      print('sach ${s.tenSach} muon thanh cong');
    }
  }

  void traSach(Sach s){
    if (danhsachMuon.contains(s.tenSach)){
      _danhsachMuon.remove(s.tenSach);
      print('Sách "${s.tenSach}" đã được trả.');
    } else {
      print('Sách "${s.tenSach}" không được mượn từ thư viện.');
    }
  }  

}