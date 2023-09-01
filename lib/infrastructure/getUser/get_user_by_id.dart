import 'package:crudoperationsmt/domain/failures/main_failures.dart';
import 'package:dartz/dartz.dart';

abstract class GetUserById {
  Future<Either<MainFailure, Map<String, dynamic>>> getUserById(
      {required int id});
}
