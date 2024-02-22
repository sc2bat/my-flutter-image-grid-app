import "package:flutter_test/flutter_test.dart";

void main() {
  test('Returns non-zero', () {
    expect(solution('543432345323542323577678'), isNonZero);
  });

  test('Returns correct in overlapping tests', () {
    expect(solution('731674765'), equals(74765));
  });

  test('qwerasdf', () => solution('101010'));
}

int solution(String digits) {
  int digitResult = 0;
  for (int i = 0; i < digits.length - 4; i++) {
    String result = digits.substring(i, i + 5);
    if (digitResult < int.parse(result)) {
      digitResult = int.parse(result);
    }
  }
  return digitResult;
}
