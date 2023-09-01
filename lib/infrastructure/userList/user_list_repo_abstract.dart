import 'package:crudoperationsmt/domain/failures/main_failures.dart';
import 'package:crudoperationsmt/domain/userList/models/user_list_model.dart';
import 'package:dartz/dartz.dart';

abstract class UserListRepo {
  Future<Either<MainFailure, List<UserListModel>>> getUserList({
    required int page,
    required int perPage,
  });
  Future<bool> deleteUser(int userId);
}
