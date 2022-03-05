import 'dart:io';

void main(List<String> arguments) {
  stdout.write("Masukkan angka : ");
  String? dtInput = stdin.readLineSync();
  int input = int.parse(dtInput!);
  int input2x = input * 2;

  int half = (input / 2).toInt();

  for (var i = 0; i < input; i++) {
    for (var j = 0; j < input; j++) {
      stdout.write(j + 1);
    }
    for (var j = input; j > 0; j++) {
      stdout.write(j);
    }
  }
}
