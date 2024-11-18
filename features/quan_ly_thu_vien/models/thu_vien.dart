import '../models/doc_gia.dart';
import '../models/sach.dart';

class ThuVien {
  List<Sach> _DSsach = [];
  List<DocGia> _DSdocGia = [];

  ThuVien(this._DSsach, this._DSdocGia);

  //getters
  List<Sach> get DSsach => _DSsach;
  List<DocGia> get DSdocGia => _DSdocGia;
  
  void themDocgia(DocGia dg) => _DSdocGia.add(dg);
  void themSach(Sach s) => _DSsach.add(s);

  void hienThiSach(){
    print('\n---------------------------');
    print('Danh Sach o Thu Vien:');
    for(var Sach in _DSsach){
      print('\n---------------------------');
      Sach.hienThiThongTin();
      print('\nTrang thai : ${Sach.hienThiMuonSach()}');
    }
  }
}