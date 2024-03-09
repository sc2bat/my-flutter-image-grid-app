import 'package:flutter_test/flutter_test.dart';
import 'package:my_flutter_image_grid_app/logger/simple_logger.dart';

void main() {
  test('qwerasdf qwerasdf', () {
    int a = 0;
    int b = 4;
    for (int i = 0; i < 4; i++) {
      logger.info(i);
    }
    // logger.info(List.generate(10, (index) => index)..add(11));
  });

  test('qwerasdf', () {
    logger.info(12 * 6015 % 26 == 4);
    logger.info(20 * 1273409 % 26);
    // logger.info(10 * 1273409 % 26);
  });

  String decode(String r) {
    List<String> atoz = List<String>.generate(
        26, (int index) => String.fromCharCode(index + 97));
    logger.info(atoz);

    List<String> strs = [];

    String number = '';

    String result = '';

    for (int i = 0; i < r.length; i++) {
      if (int.tryParse(r[i]) is int) {
        number += r[i];
      } else {
        strs.add(r[i]);
      }
    }

    int numberResult = int.parse(number);
    logger.info(numberResult);

    for (int i = 0; i < strs.length; i++) {
      for (int j = 0; j < atoz.length; j++) {
        if (strs[i] == atoz[j]) {
          result += atoz[j * numberResult % 26];
          break;
        }
      }
    }
    logger.info(number);
    logger.info(strs);
    logger.info(result);

    // your code
    return result;
  }

  test('char generate testing', () {
    final result = decode('1273409kuqhkoynvvknsdwljantzkpnmfgf');
  });

  dotest(String r, exp) {
    test("Testing for $r", () => expect(decode(r), equals(exp)));
  }

//   encode("mer", 6015)  -->  "6015ekx"

// m --> 12,   12 * 6015 % 26 = 4,    4  --> e
// e --> 4,     4 * 6015 % 26 = 10,   10 --> k
// r --> 17,   17 * 6015 % 26 = 23,   23 --> x

// So we get "ekx", hence the output is "6015ekx"

  group("fixed tests", () {
    dotest(
        "1273409kuqhkoynvvknsdwljantzkpnmfgf", "uogbucwnddunktsjfanzlurnyxmx");
    dotest("1544749cdcizljymhdmvvypyjamowl", "mfmwhbpoudfujjozopaugcb");
    dotest(
        "1122305vvkhrrcsyfkvejxjfvafzwpsdqgp", "rrsxppowmjsrclfljrajtybwviqb");
    dotest("7235897srigyvazffyrtxizwgpmvpts", "qfkoexapddefbtkpiojcxjbq");
    dotest("673334wauamqaamqkuusqegeqmi", "Impossible to decode");
  });
}
