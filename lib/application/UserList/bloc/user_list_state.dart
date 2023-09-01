part of 'user_list_bloc.dart';

@freezed
class UserListState with _$UserListState {
  const factory UserListState(
      {required bool isLoading,
      required List<UserListModel> userListModel,
      required bool isError}) = _Initial;
  factory UserListState.initial() {
    return const UserListState(
      isLoading: false,
      userListModel: [],
      isError: false,
    );
  }
}
