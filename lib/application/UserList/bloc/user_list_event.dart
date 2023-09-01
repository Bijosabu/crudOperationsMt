part of 'user_list_bloc.dart';

@freezed
class UserListEvent with _$UserListEvent {
  const factory UserListEvent.getUserList() = _GetUserList;
  const factory UserListEvent.loadMore() = _LoadMore;
  const factory UserListEvent.deleteUser({required int userId}) = _DeleteUser;
}
