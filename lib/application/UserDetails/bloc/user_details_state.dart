part of 'user_details_bloc.dart';

@freezed
class UserDetailsState with _$UserDetailsState {
  const factory UserDetailsState({
    required Map<String, dynamic> userListModel,
    required bool isLoading,
    required bool isError,
  }) = _Initial;
  factory UserDetailsState.initial() {
    return const UserDetailsState(
      userListModel: {},
      isError: false,
      isLoading: false,
    );
  }
}
