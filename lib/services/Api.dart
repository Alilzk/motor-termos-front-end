import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class DataBaseService {

Future<bool> login(String username, String password)async {
  final url = Uri.parse('https://motorapp-etaqftdgdxhvh2hy.canadacentral-01.azurewebsites.net/api/auth/login');

  final response = await http.post(
    url,
    headers: {
      'Content-Type': 'application/json',
    },
    body: jsonEncode({
      'name': username,
      'password': password,
    }),
  );

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    final token = data['token'];

    print('Login successful!');
    print('JWT Token: $token');
    return true;
    // You can now use this token in future requests
  } else {
    print('Login failed: ${response.statusCode}');
    print(response.body);
    return false;
  }
}


Future<void> getProtectedData(String token) async {
  final url = Uri.parse('https://motorapp-etaqftdgdxhvh2hy.canadacentral-01.azurewebsites.net/api/protected');

  final response = await http.get(
    url,
    headers: {
      'Authorization': 'Bearer $token',
      'Content-Type': 'application/json',
    },
  );

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    print('Protected data: $data');
  } else {
    print('Access denied: ${response.statusCode}');
  }
}


}