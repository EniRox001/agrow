import 'package:agrow/exports.dart';

class NetworkHandler {
  static final client = Client();
  //post method
  static Future<String> post(
      {required Object body, required String endpoint}) async {
    final headers = await _getHeader();

    var response = await client.post(
      buildUrl(endpoint),
      body: body,
      headers: headers,
    );
    return response.body;
  }

  static Future<Response> post1(
      {required String endpoint, required Map<String, dynamic> body}) async {
    final headers = await _getHeader();

    final response = await client.post(
      buildUrl(endpoint),
      body: jsonEncode(body),
      headers: headers,
    );

    return response;
  }

  //Delete method
  static Future<Response> delete(
      {required Object body, required String endpoint}) async {
    final headers = await _getHeader();

    var response = await client.delete(
      buildUrl(endpoint),
      body: body,
      headers: headers,
    );
    return response;
  }

  //patch method
  static Future<String> patch(
      {required Object body, required String endpoint}) async {
    final headers = await _getHeader();

    var response = await client.patch(
      buildUrl(endpoint),
      body: body,
      headers: headers,
    );
    return response.body;
  }

  static Future<String> put(
      {required Object body, required String endpoint}) async {
    final headers = await _getHeader();

    var response = await client.put(
      buildUrl(endpoint),
      body: body,
      headers: headers,
    );
    return response.body;
  }

  //fetch data
  static Future<dynamic> get({required String endpoint}) async {
    final headers = await _getHeader();

    var response = await client.get(
      buildUrl(endpoint),
      headers: headers,
    );
    return response.body;
  }

  //fetch by id
  static Future<dynamic> getById(String endpoint) async {
    final headers = await _getHeader();

    var response = await client.get(
      buildUrl(endpoint),
      headers: headers,
    );
    return response.body;
  }

  static Uri buildUrl(String endpoint) {
    const host = 'https://agrow-api.herokuapp.com/api/v1';
    // String host = Endpoint.baseUrl;
    final apiPath = host + endpoint;
    return Uri.parse(apiPath);
  }

  static Future<void> saveToken(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', token);
  }

  static Future<String?> getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('token');
  }

  static Future<bool> removeToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.remove('token');
  }

  static Future<dynamic> _getHeader() async {
    final token = await getToken();

    var headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token'
    };

    return headers;
  }
}
