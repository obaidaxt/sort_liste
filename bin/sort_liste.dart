import 'dart:io';

import 'package:sort_liste/sort_liste.dart';

void main(List<String> arguments) {
  verifyInput('1235h7o');
  stdout.write('Geben Sie eine Liste ein: ');
  final input = stdin.readLineSync();
  final output = sortListOfInt(transformListFromStringToInt(splitString(verifyInput(input!))));
  stdout.writeln('Das Ergebnis ist: $output');
}
