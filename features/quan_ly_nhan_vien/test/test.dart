import '../models/nhan_vien.dart';
import '../models/nhan_vien_ban_hang.dart';

void main(){
   // Test nhân viên thường
    var nv = nhanVien('NV001', 'Phan Hoang Minh Thuan', 300000);
    print('thong tin cua nhan vien:');
    nv.hienThiThongTin();

    // Test nhân viên bán hàng
    var nv_BH = nhanvienBanHang('NV002', 'Dinh Ngoc Phuc Thinh', 3000000, 90000000, 0.05);
    print('\nThong tin nhan vien ban hang:');
    nv_BH.hienThiThongTin();

    // Test setter
    nv_BH.doanhSo = 150000000;
    print('\nSau khi tang doanh so:');
    nv_BH.hienThiThongTin();
    
    // Test tính đa hình
    List<nhanVien> danhSachNV = [nv, nv_BH];
    print('\nDanh Sach nhan vien:');
    for (var nhanVien in danhSachNV) {
      nhanVien.hienThiThongTin();
      print('');
    }
}