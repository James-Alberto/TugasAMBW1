import 'dart:io';

void main(List<String> arguments) {
  stdout.write("Masukkan angka : ");
  String? dtInput = stdin.readLineSync();
  int input = int.parse(dtInput!);
  int coangka = input;
  int cospace = 0;
  int angka = 1;
  int angkareverse = input;
  if (input > 9) {
    angkareverse = 9;
  }

  for (var i = 0; i < input; i++) {
    for (var j = 0; j < coangka; j++) {
      if (angka > input || angka > 9) {
        angka = 1;
      }
      stdout.write(angka);
      angka++;
    }
    for (var j = 0; j < cospace; j++) {
      stdout.write(" ");
    }
    cospace += 2;
    for (var j = 0; j < coangka; j++) {
      if (angkareverse < 1) {
        angkareverse = input;
        if (input > 9) {
          angkareverse = 9;
        }
      }
      stdout.write(angkareverse);
      angkareverse -= 1;
    }
    coangka -= 1;
    print("");
  }
}
