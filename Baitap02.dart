//Baitap02.dart
//Giai pt bac 2: ax^2+bx+c = 0;

import 'dart:io';
import 'dart:math';

void main(){
  double a, b, c = 0;

  // Hàm nhập số và kiểm tra đầu vào
  double nhapSo(String thongBao) {
    while (true) {
      stdout.write(thongBao);
      String? input = stdin.readLineSync();

      try {
        //ép kiểu sang double
        double so = double.parse(input!);
        return so;
      } catch (e) {
        // Thông báo khi nhập sai kiểu
        print('Dữ liệu không hợp lệ. Vui lòng nhập lại một số.');
      }
    }
  }

  // Nhập giá trị a với điều kiện a ≠ 0
  do {
    a = nhapSo('Nhập hệ số a (a ≠ 0): ');
    if (a == 0) {
      print('a phải khác 0. Vui lòng nhập lại.');
    }
  } while (a == 0);

  
  // Nhập giá trị b và c
  b = nhapSo('Nhập hệ số b: ');
  c = nhapSo('Nhập hệ số c: ');

  //tinh delta
  double delta = b * b - 4 * a * c;

  print('\nPhương trình: ${a}x² + ${b}x + ${c} = 0');
  print('Delta = $delta');

  // Xét các trường hợp của delta
  if (delta > 0) {
    double x1 = (-b + sqrt(delta)) / (2 * a);
    double x2 = (-b - sqrt(delta)) / (2 * a);
    print('Phương trình có hai nghiệm phân biệt:');
    print('x1 = $x1');
    print('x2 = $x2');
  } else if (delta == 0) {
    double x = -b / (2 * a);
    print('Phương trình có nghiệm kép:');
    print('x = $x');
  } else {
    print('Phương trình vô nghiệm.');
  }
}