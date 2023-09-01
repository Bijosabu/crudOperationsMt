// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserList,
    required TResult Function() loadMore,
    required TResult Function(int userId) deleteUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserList,
    TResult? Function()? loadMore,
    TResult? Function(int userId)? deleteUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserList,
    TResult Function()? loadMore,
    TResult Function(int userId)? deleteUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserList value) getUserList,
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_DeleteUser value) deleteUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserList value)? getUserList,
    TResult? Function(_LoadMore value)? loadMore,
    TResult? Function(_DeleteUser value)? deleteUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserList value)? getUserList,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_DeleteUser value)? deleteUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserListEventCopyWith<$Res> {
  factory $UserListEventCopyWith(
          UserListEvent value, $Res Function(UserListEvent) then) =
      _$UserListEventCopyWithImpl<$Res, UserListEvent>;
}

/// @nodoc
class _$UserListEventCopyWithImpl<$Res, $Val extends UserListEvent>
    implements $UserListEventCopyWith<$Res> {
  _$UserListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetUserListCopyWith<$Res> {
  factory _$$_GetUserListCopyWith(
          _$_GetUserList value, $Res Function(_$_GetUserList) then) =
      __$$_GetUserListCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetUserListCopyWithImpl<$Res>
    extends _$UserListEventCopyWithImpl<$Res, _$_GetUserList>
    implements _$$_GetUserListCopyWith<$Res> {
  __$$_GetUserListCopyWithImpl(
      _$_GetUserList _value, $Res Function(_$_GetUserList) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetUserList implements _GetUserList {
  const _$_GetUserList();

  @override
  String toString() {
    return 'UserListEvent.getUserList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetUserList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserList,
    required TResult Function() loadMore,
    required TResult Function(int userId) deleteUser,
  }) {
    return getUserList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserList,
    TResult? Function()? loadMore,
    TResult? Function(int userId)? deleteUser,
  }) {
    return getUserList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserList,
    TResult Function()? loadMore,
    TResult Function(int userId)? deleteUser,
    required TResult orElse(),
  }) {
    if (getUserList != null) {
      return getUserList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserList value) getUserList,
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_DeleteUser value) deleteUser,
  }) {
    return getUserList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserList value)? getUserList,
    TResult? Function(_LoadMore value)? loadMore,
    TResult? Function(_DeleteUser value)? deleteUser,
  }) {
    return getUserList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserList value)? getUserList,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_DeleteUser value)? deleteUser,
    required TResult orElse(),
  }) {
    if (getUserList != null) {
      return getUserList(this);
    }
    return orElse();
  }
}

abstract class _GetUserList implements UserListEvent {
  const factory _GetUserList() = _$_GetUserList;
}

/// @nodoc
abstract class _$$_LoadMoreCopyWith<$Res> {
  factory _$$_LoadMoreCopyWith(
          _$_LoadMore value, $Res Function(_$_LoadMore) then) =
      __$$_LoadMoreCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadMoreCopyWithImpl<$Res>
    extends _$UserListEventCopyWithImpl<$Res, _$_LoadMore>
    implements _$$_LoadMoreCopyWith<$Res> {
  __$$_LoadMoreCopyWithImpl(
      _$_LoadMore _value, $Res Function(_$_LoadMore) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadMore implements _LoadMore {
  const _$_LoadMore();

  @override
  String toString() {
    return 'UserListEvent.loadMore()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadMore);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserList,
    required TResult Function() loadMore,
    required TResult Function(int userId) deleteUser,
  }) {
    return loadMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserList,
    TResult? Function()? loadMore,
    TResult? Function(int userId)? deleteUser,
  }) {
    return loadMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserList,
    TResult Function()? loadMore,
    TResult Function(int userId)? deleteUser,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserList value) getUserList,
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_DeleteUser value) deleteUser,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserList value)? getUserList,
    TResult? Function(_LoadMore value)? loadMore,
    TResult? Function(_DeleteUser value)? deleteUser,
  }) {
    return loadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserList value)? getUserList,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_DeleteUser value)? deleteUser,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(this);
    }
    return orElse();
  }
}

abstract class _LoadMore implements UserListEvent {
  const factory _LoadMore() = _$_LoadMore;
}

/// @nodoc
abstract class _$$_DeleteUserCopyWith<$Res> {
  factory _$$_DeleteUserCopyWith(
          _$_DeleteUser value, $Res Function(_$_DeleteUser) then) =
      __$$_DeleteUserCopyWithImpl<$Res>;
  @useResult
  $Res call({int userId});
}

/// @nodoc
class __$$_DeleteUserCopyWithImpl<$Res>
    extends _$UserListEventCopyWithImpl<$Res, _$_DeleteUser>
    implements _$$_DeleteUserCopyWith<$Res> {
  __$$_DeleteUserCopyWithImpl(
      _$_DeleteUser _value, $Res Function(_$_DeleteUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$_DeleteUser(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DeleteUser implements _DeleteUser {
  const _$_DeleteUser({required this.userId});

  @override
  final int userId;

  @override
  String toString() {
    return 'UserListEvent.deleteUser(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteUser &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteUserCopyWith<_$_DeleteUser> get copyWith =>
      __$$_DeleteUserCopyWithImpl<_$_DeleteUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserList,
    required TResult Function() loadMore,
    required TResult Function(int userId) deleteUser,
  }) {
    return deleteUser(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserList,
    TResult? Function()? loadMore,
    TResult? Function(int userId)? deleteUser,
  }) {
    return deleteUser?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserList,
    TResult Function()? loadMore,
    TResult Function(int userId)? deleteUser,
    required TResult orElse(),
  }) {
    if (deleteUser != null) {
      return deleteUser(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserList value) getUserList,
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_DeleteUser value) deleteUser,
  }) {
    return deleteUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserList value)? getUserList,
    TResult? Function(_LoadMore value)? loadMore,
    TResult? Function(_DeleteUser value)? deleteUser,
  }) {
    return deleteUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserList value)? getUserList,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_DeleteUser value)? deleteUser,
    required TResult orElse(),
  }) {
    if (deleteUser != null) {
      return deleteUser(this);
    }
    return orElse();
  }
}

abstract class _DeleteUser implements UserListEvent {
  const factory _DeleteUser({required final int userId}) = _$_DeleteUser;

  int get userId;
  @JsonKey(ignore: true)
  _$$_DeleteUserCopyWith<_$_DeleteUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserListState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<UserListModel> get userListModel => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserListStateCopyWith<UserListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserListStateCopyWith<$Res> {
  factory $UserListStateCopyWith(
          UserListState value, $Res Function(UserListState) then) =
      _$UserListStateCopyWithImpl<$Res, UserListState>;
  @useResult
  $Res call({bool isLoading, List<UserListModel> userListModel, bool isError});
}

/// @nodoc
class _$UserListStateCopyWithImpl<$Res, $Val extends UserListState>
    implements $UserListStateCopyWith<$Res> {
  _$UserListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? userListModel = null,
    Object? isError = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      userListModel: null == userListModel
          ? _value.userListModel
          : userListModel // ignore: cast_nullable_to_non_nullable
              as List<UserListModel>,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $UserListStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<UserListModel> userListModel, bool isError});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$UserListStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? userListModel = null,
    Object? isError = null,
  }) {
    return _then(_$_Initial(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      userListModel: null == userListModel
          ? _value._userListModel
          : userListModel // ignore: cast_nullable_to_non_nullable
              as List<UserListModel>,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.isLoading,
      required final List<UserListModel> userListModel,
      required this.isError})
      : _userListModel = userListModel;

  @override
  final bool isLoading;
  final List<UserListModel> _userListModel;
  @override
  List<UserListModel> get userListModel {
    if (_userListModel is EqualUnmodifiableListView) return _userListModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userListModel);
  }

  @override
  final bool isError;

  @override
  String toString() {
    return 'UserListState(isLoading: $isLoading, userListModel: $userListModel, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._userListModel, _userListModel) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_userListModel), isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements UserListState {
  const factory _Initial(
      {required final bool isLoading,
      required final List<UserListModel> userListModel,
      required final bool isError}) = _$_Initial;

  @override
  bool get isLoading;
  @override
  List<UserListModel> get userListModel;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
