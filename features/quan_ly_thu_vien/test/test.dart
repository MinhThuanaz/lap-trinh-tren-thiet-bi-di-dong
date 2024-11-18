import '../models/doc_gia.dart';
import '../models/sach.dart';
import '../models/thu_vien.dart';

void main() {
  // Tạo một số sách
  Sach sach1 = Sach('S001', 'Lập Trình Dart', 'Trung Hồ Bảo', false);
  Sach sach2 = Sach('S002', 'Giới Thiệu Về Flutter', 'Phan Minh Tùng', false);
  Sach sach3 = Sach('S003', 'Học Máy', 'Lê Văn Sĩ', false);

  // Tạo một số độc giả
  DocGia docgia1 = DocGia('DG001', 'Bùi Thị Xuân');
  DocGia docgia2 = DocGia('DG002', 'Trần Duy Hưng');

  // Tạo thư viện và thêm sách, độc giả
  ThuVien tv = ThuVien([], []);
  tv.themSach(sach1);
  tv.themSach(sach2);
  tv.themSach(sach3);
  tv.themDocgia(docgia1);
  tv.themDocgia(docgia2);

  // Hiển thị danh sách sách trong thư viện
  tv.hienThiSach();

  // Độc giả mượn sách
  docgia1.muonSach(sach1);
  docgia1.muonSach(sach2);

  // Hiển thị lại danh sách sách sau khi mượn
  print('\nDanh sách sách sau khi mượn:');
  tv.hienThiSach();

  // Độc giả trả sách
  docgia1.traSach(sach1);

  // Hiển thị lại danh sách sách sau khi trả
  print('\nDanh sách sách sau khi trả:');
  tv.hienThiSach();
}