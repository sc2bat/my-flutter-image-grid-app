import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:http/http.dart' as http;
import 'package:my_flutter_image_grid_app/constant/constant.dart';
import 'package:my_flutter_image_grid_app/logger/simple_logger.dart';

class HttpConnection {
  final String baseUrl;
  final Map<String, dynamic> query;

  HttpConnection(
    this.baseUrl,
    this.query,
  );

  Future<String> apiConnection() async {
    final response =
        await http.get(Uri.parse('${queryProcess(baseUrl, query)}'));
    if (response.statusCode == 200) {
      return response.body;
    }
    throw Exception();
  }

  queryProcess(String baseUrl, Map<String, dynamic> query) {
    baseUrl = 'https://pixabay.com/api/';
    query = {
      "key": PIXABAY_API_KEY,
      "q": null,
      "image_type": "photo",
      "pretty": "true",
    };
    String resultUrl = '';
    List<String> queryParameters = [];
    query.forEach((key, value) {
      if (value != null) {
        queryParameters.add('$key=$value');
      }
    });
    resultUrl = '$baseUrl${queryParameters.join('&')}';

    return resultUrl;
  }
}

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    // await tester.pumpWidget(const MyApp());

    String result = await HttpConnection('q', {"q": "qwer"}).apiConnection();
    logger.info(result);

    /**
    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
     */
  });
}
