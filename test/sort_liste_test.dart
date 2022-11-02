import 'package:sort_liste/sort_liste.dart';
import 'package:test/test.dart';

void main() {
  test('verifyInput', () {
    expect(verifyInput('123ABCDEF654'), '123654');
    expect(verifyInput(''), '');
    expect(verifyInput('1'), '1');
    expect(verifyInput('1,2'), '1,2');
    expect(verifyInput('1, 2'), '1,2');
    expect(verifyInput(' 1,  2        '), '1,2');
    expect(verifyInput(' 1,  2   fzq     '), '1,2');
  });

  test('splitString', () {
    expect(splitString(''), []);
    expect(splitString('1'), ['1']);
    expect(splitString('1,2'), ['1', '2']);
    expect(splitString('35,2005,19'), ['35', '2005', '19']);
    expect(splitString('1,,,53'), ['1', '', '', '53']);
  });

  test('transformListFromStringToInt', () {
    expect(transformListFromStringToInt([]), []);
    expect(transformListFromStringToInt(['1']), [1]);
    expect(transformListFromStringToInt(['1', '2']), [1, 2]);
    expect(transformListFromStringToInt(['35', '2005', '19']), [35, 2005, 19]);
    expect(transformListFromStringToInt(['1', '', '', '53']), [1, 53]);
  });

  test('sortListOfInt', () {
    // expect(sortListOfInt([]), []);
    // expect(sortListOfInt([1, 3]), [1, 3]);
    // expect(sortListOfInt([3, 1]), [1, 3]);
    expect(sortListOfInt([6, 2, 3, 9, 1, 2, 4]), [1, 2, 2, 3, 4, 6, 9]);
  });
}
