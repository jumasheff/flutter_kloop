import 'package:http/http.dart' as http;

class Request {
  final String url;

  Request({this.url});

  Future<http.Response> get() {
    return http.get(this.url).timeout(Duration(seconds: 5));
  }
}
