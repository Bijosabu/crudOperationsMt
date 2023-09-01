// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../application/UserDetails/bloc/user_details_bloc.dart' as _i5;
import '../../application/UserList/bloc/user_list_bloc.dart' as _i8;
import '../../infrastructure/getUser/get_user_by_id.dart' as _i3;
import '../../infrastructure/userList/user_list_repo_abstract.dart' as _i6;
import '../getUserById/get_user_by_id_repo.dart' as _i4;
import '../userList/user_list_repo.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.GetUserById>(() => _i4.GetUser());
  gh.factory<_i5.UserDetailsBloc>(
      () => _i5.UserDetailsBloc(get<_i3.GetUserById>()));
  gh.lazySingleton<_i6.UserListRepo>(() => _i7.UserListRepository());
  gh.factory<_i8.UserListBloc>(() => _i8.UserListBloc(get<_i6.UserListRepo>()));
  return get;
}
