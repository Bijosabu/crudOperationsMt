// ignore_for_file: unused_local_variable

import 'dart:convert';

import 'package:crudoperationsmt/domain/api_end_points.dart';
import 'package:crudoperationsmt/domain/failures/main_failures.dart';
import 'package:crudoperationsmt/domain/userList/models/user_list_model.dart';
import 'package:crudoperationsmt/infrastructure/api_key.dart';
import 'package:crudoperationsmt/infrastructure/userList/user_list_repo_abstract.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton(as: UserListRepo)
class UserListRepository implements UserListRepo {
  @override
  Future<Either<MainFailure, List<UserListModel>>> getUserList({
    required int page,
    required int perPage,
  }) async {
    try {
      final headers = {
        'Authorization': apiKey,
      };
      const baseUrll = baseUrl;

      final response = await http.get(
          Uri.parse(
            '$baseUrll/public/v2/users?page=$page&per_page=$perPage',
          ),
          headers: headers);
      if (kDebugMode) {
        print('Response Status Code: ${response.statusCode}');
      }
      if (kDebugMode) {
        print('Response Body: ${response.body}');
      }
      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body);
        final userListData = (jsonData as List)
            .map((userData) => UserListModel.fromJson(userData))
            .toList();

        if (kDebugMode) {
          print(userListData);
        }

        return Right(userListData);
      } else {
        if (kDebugMode) {
          print('client error');
        }
        return const Left(MainFailure.clientFailure());
      }
    } catch (e) {
      if (kDebugMode) {
        print('server failure');
      }
      return const Left(MainFailure.serverFailure());
    }
  }

  @override
  Future<bool> deleteUser(int userId) async {
    final headers = {
      'Authorization': 'Bearer $apiKey',
    };

    final response = await http.delete(
      Uri.parse('$baseUrl/public/v2/users/$userId'),
      headers: headers,
    );

    if (response.statusCode == 204) {
      print('User deleted successfully');
      return true;
    } else {
      print('Failed to delete user');
      return false;
    }
  }
}
