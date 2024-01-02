import 'package:http/http.dart' as http;

class HttpConnection {
  final String baseUrl;
  final Map<String, dynamic> query;

  HttpConnection(
    this.baseUrl,
    this.query,
  );

  Future<http.Response> apiConnection() async {
    final response =
        await http.get(Uri.parse('${queryProcess(baseUrl, query)}'));
    return response;
  }

  queryProcess(String baseUrl, Map<String, dynamic> query) {
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
