import 'dart:io';

void main(List<String> arguments) {
  stdout.write("Masukkan angka : ");
  String? dtInput = stdin.readLineSync();
  int input = int.parse(dtInput!);

  int half = (input / 2).toInt();
  int stars = half;
  int count = 1;
  int co = 1;

  for (var i = 0; i < input; i++) {
    if (co > 9) {
      co = 1;
    }
    for (var j = 0; j < stars; j++) {
      stdout.write("*");
    }

    for (var j = 0; j < count; j++) {
      if (j % 2 == 0) {
        stdout.write(co);
      } else {
        stdout.write(" ");
      }
    }

    for (var j = 0; j < stars; j++) {
      stdout.write("*");
    }

    print("");
    co += 1;

    if (i < half) {
      stars -= 1;
      count += 2;
    } else {
      stars += 1;
      count -= 2;
    }
  }
}
