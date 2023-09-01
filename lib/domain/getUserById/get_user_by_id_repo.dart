import 'dart:convert';

import 'package:crudoperationsmt/domain/api_end_points.dart';
import 'package:crudoperationsmt/domain/failures/main_failures.dart';
import 'package:crudoperationsmt/infrastructure/api_key.dart';
import 'package:crudoperationsmt/infrastructure/getUser/get_user_by_id.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton(as: GetUserById)
class GetUser implements GetUserById {
  @override
  Future<Either<MainFailure, Map<String, dynamic>>> getUserById(
      {required int id}) async {
    try {
      final headers = {
        'Authorization': "Bearer $apiKey",
      };
      const baseUrll = baseUrl;

      final response = await http.get(
          Uri.parse(
            '$baseUrll/public/v2/users/$id',
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

        if (kDebugMode) {
          print(jsonData);
        }

        return Right(jsonData);
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
}
