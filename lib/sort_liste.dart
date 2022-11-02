String verifyInput(String input) => input.replaceAll(RegExp('[^0-9,]'), '');
// {
// String result = '';
// for (int i = 0; i < input.length; i++) {
//   if (int.tryParse(input[i]) != null || input[i] == ',') {
//     result = result + input[i];
//   }
// }
// return result;
//   final regExp = RegExp('[^0-9,]');
//   final x = input.replaceAll(regExp, '');
//   return x;
// }

List<String> splitString(String input) => input.isEmpty ? [] : input.split(',');

// List<String> splitString(String input) {
//   int y = 0;
//   if (input.isEmpty) {
//     return [];
//   }
//   List<String> result = [''];
//   for (int i = 0; i < input.length; i++) {
//     if (input[i] != ',') {
//       result[y] += input[i];
//     } else {
//       result.add('');
//       y++;
//     }
//   }

//   return result;
// }

// List<int> transformListFromStringToInt(List<String> inputs) {
//   List<int> result = [];
//   for (int i = 0; i < inputs.length; i++) {
//     if (int.tryParse(inputs[i]) != null) {
//       result.add(int.parse(inputs[i]));
//     }
//   }

//   return result;
// }

List<int> transformListFromStringToInt(List<String> inputs) =>
    inputs.where((e) => int.tryParse(e) != null).map((e) => int.parse(e)).toList();

// {
// final listBereinigt = inputs.where((e) => int.tryParse(e) != null);
// final result = inputs.map((e) => int.parse(e)).toList();
// return result;
// }

List<int> sortListOfInt(List<int> zahlen) {
  zahlen.sort();
  return zahlen;
}

List<int> sortListOfInt2(List<int> zahlen) {
  List<int> inputs = [...zahlen];
  List<int> result = [];
  // result.sort();
  while (inputs.length > 0) {
    int? smallestValue;
    int? smallestValueAt;
    for (var i = 0; i < inputs.length; i++) {
      if (smallestValue == null || inputs[i] < smallestValue) {
        smallestValue = inputs[i];
        smallestValueAt = i;
      }
    }
    result.add(smallestValue!);
    inputs.removeAt(smallestValueAt!);
  }
  return result;
}
