// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:crudoperationsmt/domain/api_end_points.dart';
import 'package:crudoperationsmt/infrastructure/api_key.dart';
import 'package:crudoperationsmt/infrastructure/updateUser/update_user_repo_abstract.dart';
import 'package:http/http.dart' as http;

class UpdateUserRepository implements UpdateUserRepo {
  @override
  Future<bool> updateUserDetails(
      int userId, Map<String, dynamic> userData) async {
    final headers = {
      'Authorization': "Bearer $apiKey",
      'Content-Type': 'application/json',
    };
    final response = await http.put(
      Uri.parse('$baseUrl/public/v2/users/$userId'),
      headers: headers,
      body: jsonEncode(userData),
    );

    print(response.body);
    if (response.statusCode == 200) {
      print(response.statusCode);
      print('User updated successfully');
      return true;
    } else {
      print(response.statusCode);
      print('Failed to update user');
      return false;
      // Handle error scenarios
    }
  }
}
