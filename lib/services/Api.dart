import 'dart:convert';
import 'package:http/http.dart' as http;

class DataBaseService {
  String token = "";

  Future<bool> login(String name, String password) async {
    final url = Uri.parse('https://motorapp-etaqftdgdxhvh2hy.canadacentral-01.azurewebsites.net/api/auth/login');

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'name': name,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      token = data['token'];

      print('Login successful!');
      print('JWT Token: $token');
      return true;
    } else {
      print('Login failed: ${response.statusCode}');
      print(response.body);
      return false;
    }
  }

  Future<void> getBreakerById(String id) async {
    final url = Uri.parse(
      'https://motorapp-etaqftdgdxhvh2hy.canadacentral-01.azurewebsites.net/api/Breaker/$id',
    );

    final response = await http.get(
      url,
      headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      print('Breaker data: $data');
    } else {
      print('Failed to get breaker: ${response.statusCode}');
      print(response.body);
    }
  }
}
