import 'package:flutter_test/flutter_test.dart';

void main() {
  test('test flick result', () {
    expect(solution(['codewars', 'flick', 'code', 'wars']),
        [true, false, false, false]);
    expect(solution(['flick', 'chocolate', 'adventure', 'sunshine']),
        [false, false, false, false]);
    expect(solution(['bicycle', 'jarmony', 'flick', 'sheep', 'flick']),
        [true, true, false, false, true]);
  });
}

List<bool> solution(List<String> stringList) {
  List<bool> resultList = [];

  bool isFlick = true;
  for (int i = 0; i < stringList.length; i++) {
    if (stringList[i] == 'flick') {
      isFlick = !isFlick;
    }
    resultList.add(isFlick);
  }
  return resultList;
}
