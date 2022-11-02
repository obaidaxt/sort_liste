import 'dart:math';

import 'package:sort_liste/sort_liste.dart';

void main() {
  print('Hallo');
  final time = DateTime.now();
  final rng = Random();
  final list1 = List.generate(40000, (index) => rng.nextInt(100000000));
  final list2 = List.generate(20000, (index) => rng.nextInt(100000000));
  final timeVorSort1 = DateTime.now();
  print('Listen erstellt: ${timeVorSort1.difference(time)}');
  final sort1 = sortListOfInt(list1);
  final timeNachSort1 = DateTime.now();
  print('Liste 1 sortiert: ${timeNachSort1.difference(timeVorSort1)}');
  final sort2 = sortListOfInt2(list2);
  final timeNachSort2 = DateTime.now();
  print('Liste 2 sortiert: ${timeNachSort2.difference(timeNachSort1)}');
}
