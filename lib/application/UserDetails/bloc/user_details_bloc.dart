import 'package:bloc/bloc.dart';
import 'package:crudoperationsmt/infrastructure/getUser/get_user_by_id.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'user_details_event.dart';
part 'user_details_state.dart';
part 'user_details_bloc.freezed.dart';

@injectable
class UserDetailsBloc extends Bloc<UserDetailsEvent, UserDetailsState> {
  final GetUserById _getUserById;
  UserDetailsBloc(this._getUserById) : super(UserDetailsState.initial()) {
    on<_GetDetailsById>(
      (event, emit) async {
        emit(state.copyWith(
          isError: false,
          isLoading: true,
          userListModel: {},
        ));
        final data = await _getUserById.getUserById(id: event.id);
        emit(data.fold((failure) {
          return state.copyWith(
            isError: true,
            isLoading: false,
            userListModel: {},
          );
        }, (success) {
          return state.copyWith(
            isError: false,
            isLoading: false,
            userListModel: success,
          );
        }));
      },
    );
  }
}
