import 'package:bloc/bloc.dart';
import 'package:crudoperationsmt/domain/userList/models/user_list_model.dart';
import 'package:crudoperationsmt/infrastructure/userList/user_list_repo_abstract.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'user_list_event.dart';
part 'user_list_state.dart';
part 'user_list_bloc.freezed.dart';

@injectable
class UserListBloc extends Bloc<UserListEvent, UserListState> {
  final UserListRepo _userListRepo;
  int currentPage = 1;

  UserListBloc(this._userListRepo) : super(UserListState.initial()) {
    on<_GetUserList>((event, emit) async {
      emit(
        state.copyWith(
          isError: false,
          isLoading: true,
          userListModel: [],
        ),
      );
      final data = await _userListRepo.getUserList(page: 1, perPage: 4);
      emit(data.fold((failure) {
        return state.copyWith(
          isError: true,
          isLoading: false,
          userListModel: [],
        );
      }, (success) {
        currentPage++;
        return state.copyWith(
          isError: false,
          isLoading: false,
          userListModel: success,
        );
      }));
    });

    on<_LoadMore>((event, emit) async {
      final data =
          await _userListRepo.getUserList(page: currentPage, perPage: 4);
      emit(data.fold((failure) {
        return state.copyWith(
          isError: true,
          isLoading: false,
        );
      }, (success) {
        currentPage++;
        return state.copyWith(
          isError: false,
          isLoading: false,
          userListModel: [...state.userListModel, ...success],
        );
      }));
    });
    on<_DeleteUser>((event, emit) async {
      final userId = event.userId;

      final result = await _userListRepo.deleteUser(userId);

      if (result) {
        final updatedUserListModel =
            state.userListModel.where((user) => user.id != userId).toList();

        emit(state.copyWith(
          userListModel: updatedUserListModel,
        ));
      }
    });
  }
}
