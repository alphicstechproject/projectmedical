// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginState {
  GetAuthenticationState get getAuthenticationState =>
      throw _privateConstructorUsedError;
  String get nameField => throw _privateConstructorUsedError;
  String get passwordField => throw _privateConstructorUsedError;
  bool get isRemember => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {GetAuthenticationState getAuthenticationState,
      String nameField,
      String passwordField,
      bool isRemember});

  $GetAuthenticationStateCopyWith<$Res> get getAuthenticationState;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getAuthenticationState = null,
    Object? nameField = null,
    Object? passwordField = null,
    Object? isRemember = null,
  }) {
    return _then(_value.copyWith(
      getAuthenticationState: null == getAuthenticationState
          ? _value.getAuthenticationState
          : getAuthenticationState // ignore: cast_nullable_to_non_nullable
              as GetAuthenticationState,
      nameField: null == nameField
          ? _value.nameField
          : nameField // ignore: cast_nullable_to_non_nullable
              as String,
      passwordField: null == passwordField
          ? _value.passwordField
          : passwordField // ignore: cast_nullable_to_non_nullable
              as String,
      isRemember: null == isRemember
          ? _value.isRemember
          : isRemember // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GetAuthenticationStateCopyWith<$Res> get getAuthenticationState {
    return $GetAuthenticationStateCopyWith<$Res>(_value.getAuthenticationState,
        (value) {
      return _then(_value.copyWith(getAuthenticationState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LoginStateCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$_LoginStateCopyWith(
          _$_LoginState value, $Res Function(_$_LoginState) then) =
      __$$_LoginStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GetAuthenticationState getAuthenticationState,
      String nameField,
      String passwordField,
      bool isRemember});

  @override
  $GetAuthenticationStateCopyWith<$Res> get getAuthenticationState;
}

/// @nodoc
class __$$_LoginStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_LoginState>
    implements _$$_LoginStateCopyWith<$Res> {
  __$$_LoginStateCopyWithImpl(
      _$_LoginState _value, $Res Function(_$_LoginState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getAuthenticationState = null,
    Object? nameField = null,
    Object? passwordField = null,
    Object? isRemember = null,
  }) {
    return _then(_$_LoginState(
      getAuthenticationState: null == getAuthenticationState
          ? _value.getAuthenticationState
          : getAuthenticationState // ignore: cast_nullable_to_non_nullable
              as GetAuthenticationState,
      nameField: null == nameField
          ? _value.nameField
          : nameField // ignore: cast_nullable_to_non_nullable
              as String,
      passwordField: null == passwordField
          ? _value.passwordField
          : passwordField // ignore: cast_nullable_to_non_nullable
              as String,
      isRemember: null == isRemember
          ? _value.isRemember
          : isRemember // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LoginState implements _LoginState {
  const _$_LoginState(
      {required this.getAuthenticationState,
      required this.nameField,
      required this.passwordField,
      required this.isRemember});

  @override
  final GetAuthenticationState getAuthenticationState;
  @override
  final String nameField;
  @override
  final String passwordField;
  @override
  final bool isRemember;

  @override
  String toString() {
    return 'LoginState(getAuthenticationState: $getAuthenticationState, nameField: $nameField, passwordField: $passwordField, isRemember: $isRemember)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginState &&
            (identical(other.getAuthenticationState, getAuthenticationState) ||
                other.getAuthenticationState == getAuthenticationState) &&
            (identical(other.nameField, nameField) ||
                other.nameField == nameField) &&
            (identical(other.passwordField, passwordField) ||
                other.passwordField == passwordField) &&
            (identical(other.isRemember, isRemember) ||
                other.isRemember == isRemember));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getAuthenticationState,
      nameField, passwordField, isRemember);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      __$$_LoginStateCopyWithImpl<_$_LoginState>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {required final GetAuthenticationState getAuthenticationState,
      required final String nameField,
      required final String passwordField,
      required final bool isRemember}) = _$_LoginState;

  @override
  GetAuthenticationState get getAuthenticationState;
  @override
  String get nameField;
  @override
  String get passwordField;
  @override
  bool get isRemember;
  @override
  @JsonKey(ignore: true)
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetAuthenticationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(String success) success,
    required TResult Function(String failed) failed,
    required TResult Function() warning,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(String success)? success,
    TResult? Function(String failed)? failed,
    TResult? Function()? warning,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(String success)? success,
    TResult Function(String failed)? failed,
    TResult Function()? warning,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAuthenticationStateInitial value) initial,
    required TResult Function(_GetAuthenticationStateinProgress value)
        inProgress,
    required TResult Function(_GetAuthenticationStateSuccess value) success,
    required TResult Function(_GetAuthenticationStateFailed value) failed,
    required TResult Function(_GetAuthenticationStateWarning value) warning,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAuthenticationStateInitial value)? initial,
    TResult? Function(_GetAuthenticationStateinProgress value)? inProgress,
    TResult? Function(_GetAuthenticationStateSuccess value)? success,
    TResult? Function(_GetAuthenticationStateFailed value)? failed,
    TResult? Function(_GetAuthenticationStateWarning value)? warning,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAuthenticationStateInitial value)? initial,
    TResult Function(_GetAuthenticationStateinProgress value)? inProgress,
    TResult Function(_GetAuthenticationStateSuccess value)? success,
    TResult Function(_GetAuthenticationStateFailed value)? failed,
    TResult Function(_GetAuthenticationStateWarning value)? warning,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAuthenticationStateCopyWith<$Res> {
  factory $GetAuthenticationStateCopyWith(GetAuthenticationState value,
          $Res Function(GetAuthenticationState) then) =
      _$GetAuthenticationStateCopyWithImpl<$Res, GetAuthenticationState>;
}

/// @nodoc
class _$GetAuthenticationStateCopyWithImpl<$Res,
        $Val extends GetAuthenticationState>
    implements $GetAuthenticationStateCopyWith<$Res> {
  _$GetAuthenticationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetAuthenticationStateInitialCopyWith<$Res> {
  factory _$$_GetAuthenticationStateInitialCopyWith(
          _$_GetAuthenticationStateInitial value,
          $Res Function(_$_GetAuthenticationStateInitial) then) =
      __$$_GetAuthenticationStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetAuthenticationStateInitialCopyWithImpl<$Res>
    extends _$GetAuthenticationStateCopyWithImpl<$Res,
        _$_GetAuthenticationStateInitial>
    implements _$$_GetAuthenticationStateInitialCopyWith<$Res> {
  __$$_GetAuthenticationStateInitialCopyWithImpl(
      _$_GetAuthenticationStateInitial _value,
      $Res Function(_$_GetAuthenticationStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetAuthenticationStateInitial
    implements _GetAuthenticationStateInitial {
  const _$_GetAuthenticationStateInitial();

  @override
  String toString() {
    return 'GetAuthenticationState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetAuthenticationStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(String success) success,
    required TResult Function(String failed) failed,
    required TResult Function() warning,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(String success)? success,
    TResult? Function(String failed)? failed,
    TResult? Function()? warning,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(String success)? success,
    TResult Function(String failed)? failed,
    TResult Function()? warning,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAuthenticationStateInitial value) initial,
    required TResult Function(_GetAuthenticationStateinProgress value)
        inProgress,
    required TResult Function(_GetAuthenticationStateSuccess value) success,
    required TResult Function(_GetAuthenticationStateFailed value) failed,
    required TResult Function(_GetAuthenticationStateWarning value) warning,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAuthenticationStateInitial value)? initial,
    TResult? Function(_GetAuthenticationStateinProgress value)? inProgress,
    TResult? Function(_GetAuthenticationStateSuccess value)? success,
    TResult? Function(_GetAuthenticationStateFailed value)? failed,
    TResult? Function(_GetAuthenticationStateWarning value)? warning,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAuthenticationStateInitial value)? initial,
    TResult Function(_GetAuthenticationStateinProgress value)? inProgress,
    TResult Function(_GetAuthenticationStateSuccess value)? success,
    TResult Function(_GetAuthenticationStateFailed value)? failed,
    TResult Function(_GetAuthenticationStateWarning value)? warning,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _GetAuthenticationStateInitial
    implements GetAuthenticationState {
  const factory _GetAuthenticationStateInitial() =
      _$_GetAuthenticationStateInitial;
}

/// @nodoc
abstract class _$$_GetAuthenticationStateinProgressCopyWith<$Res> {
  factory _$$_GetAuthenticationStateinProgressCopyWith(
          _$_GetAuthenticationStateinProgress value,
          $Res Function(_$_GetAuthenticationStateinProgress) then) =
      __$$_GetAuthenticationStateinProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetAuthenticationStateinProgressCopyWithImpl<$Res>
    extends _$GetAuthenticationStateCopyWithImpl<$Res,
        _$_GetAuthenticationStateinProgress>
    implements _$$_GetAuthenticationStateinProgressCopyWith<$Res> {
  __$$_GetAuthenticationStateinProgressCopyWithImpl(
      _$_GetAuthenticationStateinProgress _value,
      $Res Function(_$_GetAuthenticationStateinProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetAuthenticationStateinProgress
    implements _GetAuthenticationStateinProgress {
  const _$_GetAuthenticationStateinProgress();

  @override
  String toString() {
    return 'GetAuthenticationState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetAuthenticationStateinProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(String success) success,
    required TResult Function(String failed) failed,
    required TResult Function() warning,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(String success)? success,
    TResult? Function(String failed)? failed,
    TResult? Function()? warning,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(String success)? success,
    TResult Function(String failed)? failed,
    TResult Function()? warning,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAuthenticationStateInitial value) initial,
    required TResult Function(_GetAuthenticationStateinProgress value)
        inProgress,
    required TResult Function(_GetAuthenticationStateSuccess value) success,
    required TResult Function(_GetAuthenticationStateFailed value) failed,
    required TResult Function(_GetAuthenticationStateWarning value) warning,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAuthenticationStateInitial value)? initial,
    TResult? Function(_GetAuthenticationStateinProgress value)? inProgress,
    TResult? Function(_GetAuthenticationStateSuccess value)? success,
    TResult? Function(_GetAuthenticationStateFailed value)? failed,
    TResult? Function(_GetAuthenticationStateWarning value)? warning,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAuthenticationStateInitial value)? initial,
    TResult Function(_GetAuthenticationStateinProgress value)? inProgress,
    TResult Function(_GetAuthenticationStateSuccess value)? success,
    TResult Function(_GetAuthenticationStateFailed value)? failed,
    TResult Function(_GetAuthenticationStateWarning value)? warning,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _GetAuthenticationStateinProgress
    implements GetAuthenticationState {
  const factory _GetAuthenticationStateinProgress() =
      _$_GetAuthenticationStateinProgress;
}

/// @nodoc
abstract class _$$_GetAuthenticationStateSuccessCopyWith<$Res> {
  factory _$$_GetAuthenticationStateSuccessCopyWith(
          _$_GetAuthenticationStateSuccess value,
          $Res Function(_$_GetAuthenticationStateSuccess) then) =
      __$$_GetAuthenticationStateSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({String success});
}

/// @nodoc
class __$$_GetAuthenticationStateSuccessCopyWithImpl<$Res>
    extends _$GetAuthenticationStateCopyWithImpl<$Res,
        _$_GetAuthenticationStateSuccess>
    implements _$$_GetAuthenticationStateSuccessCopyWith<$Res> {
  __$$_GetAuthenticationStateSuccessCopyWithImpl(
      _$_GetAuthenticationStateSuccess _value,
      $Res Function(_$_GetAuthenticationStateSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
  }) {
    return _then(_$_GetAuthenticationStateSuccess(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetAuthenticationStateSuccess
    implements _GetAuthenticationStateSuccess {
  const _$_GetAuthenticationStateSuccess({required this.success});

  @override
  final String success;

  @override
  String toString() {
    return 'GetAuthenticationState.success(success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetAuthenticationStateSuccess &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode => Object.hash(runtimeType, success);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetAuthenticationStateSuccessCopyWith<_$_GetAuthenticationStateSuccess>
      get copyWith => __$$_GetAuthenticationStateSuccessCopyWithImpl<
          _$_GetAuthenticationStateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(String success) success,
    required TResult Function(String failed) failed,
    required TResult Function() warning,
  }) {
    return success(this.success);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(String success)? success,
    TResult? Function(String failed)? failed,
    TResult? Function()? warning,
  }) {
    return success?.call(this.success);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(String success)? success,
    TResult Function(String failed)? failed,
    TResult Function()? warning,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this.success);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAuthenticationStateInitial value) initial,
    required TResult Function(_GetAuthenticationStateinProgress value)
        inProgress,
    required TResult Function(_GetAuthenticationStateSuccess value) success,
    required TResult Function(_GetAuthenticationStateFailed value) failed,
    required TResult Function(_GetAuthenticationStateWarning value) warning,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAuthenticationStateInitial value)? initial,
    TResult? Function(_GetAuthenticationStateinProgress value)? inProgress,
    TResult? Function(_GetAuthenticationStateSuccess value)? success,
    TResult? Function(_GetAuthenticationStateFailed value)? failed,
    TResult? Function(_GetAuthenticationStateWarning value)? warning,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAuthenticationStateInitial value)? initial,
    TResult Function(_GetAuthenticationStateinProgress value)? inProgress,
    TResult Function(_GetAuthenticationStateSuccess value)? success,
    TResult Function(_GetAuthenticationStateFailed value)? failed,
    TResult Function(_GetAuthenticationStateWarning value)? warning,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _GetAuthenticationStateSuccess
    implements GetAuthenticationState {
  const factory _GetAuthenticationStateSuccess(
      {required final String success}) = _$_GetAuthenticationStateSuccess;

  String get success;
  @JsonKey(ignore: true)
  _$$_GetAuthenticationStateSuccessCopyWith<_$_GetAuthenticationStateSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetAuthenticationStateFailedCopyWith<$Res> {
  factory _$$_GetAuthenticationStateFailedCopyWith(
          _$_GetAuthenticationStateFailed value,
          $Res Function(_$_GetAuthenticationStateFailed) then) =
      __$$_GetAuthenticationStateFailedCopyWithImpl<$Res>;
  @useResult
  $Res call({String failed});
}

/// @nodoc
class __$$_GetAuthenticationStateFailedCopyWithImpl<$Res>
    extends _$GetAuthenticationStateCopyWithImpl<$Res,
        _$_GetAuthenticationStateFailed>
    implements _$$_GetAuthenticationStateFailedCopyWith<$Res> {
  __$$_GetAuthenticationStateFailedCopyWithImpl(
      _$_GetAuthenticationStateFailed _value,
      $Res Function(_$_GetAuthenticationStateFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failed = null,
  }) {
    return _then(_$_GetAuthenticationStateFailed(
      failed: null == failed
          ? _value.failed
          : failed // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetAuthenticationStateFailed implements _GetAuthenticationStateFailed {
  const _$_GetAuthenticationStateFailed({required this.failed});

  @override
  final String failed;

  @override
  String toString() {
    return 'GetAuthenticationState.failed(failed: $failed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetAuthenticationStateFailed &&
            (identical(other.failed, failed) || other.failed == failed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetAuthenticationStateFailedCopyWith<_$_GetAuthenticationStateFailed>
      get copyWith => __$$_GetAuthenticationStateFailedCopyWithImpl<
          _$_GetAuthenticationStateFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(String success) success,
    required TResult Function(String failed) failed,
    required TResult Function() warning,
  }) {
    return failed(this.failed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(String success)? success,
    TResult? Function(String failed)? failed,
    TResult? Function()? warning,
  }) {
    return failed?.call(this.failed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(String success)? success,
    TResult Function(String failed)? failed,
    TResult Function()? warning,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this.failed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAuthenticationStateInitial value) initial,
    required TResult Function(_GetAuthenticationStateinProgress value)
        inProgress,
    required TResult Function(_GetAuthenticationStateSuccess value) success,
    required TResult Function(_GetAuthenticationStateFailed value) failed,
    required TResult Function(_GetAuthenticationStateWarning value) warning,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAuthenticationStateInitial value)? initial,
    TResult? Function(_GetAuthenticationStateinProgress value)? inProgress,
    TResult? Function(_GetAuthenticationStateSuccess value)? success,
    TResult? Function(_GetAuthenticationStateFailed value)? failed,
    TResult? Function(_GetAuthenticationStateWarning value)? warning,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAuthenticationStateInitial value)? initial,
    TResult Function(_GetAuthenticationStateinProgress value)? inProgress,
    TResult Function(_GetAuthenticationStateSuccess value)? success,
    TResult Function(_GetAuthenticationStateFailed value)? failed,
    TResult Function(_GetAuthenticationStateWarning value)? warning,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _GetAuthenticationStateFailed implements GetAuthenticationState {
  const factory _GetAuthenticationStateFailed({required final String failed}) =
      _$_GetAuthenticationStateFailed;

  String get failed;
  @JsonKey(ignore: true)
  _$$_GetAuthenticationStateFailedCopyWith<_$_GetAuthenticationStateFailed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetAuthenticationStateWarningCopyWith<$Res> {
  factory _$$_GetAuthenticationStateWarningCopyWith(
          _$_GetAuthenticationStateWarning value,
          $Res Function(_$_GetAuthenticationStateWarning) then) =
      __$$_GetAuthenticationStateWarningCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetAuthenticationStateWarningCopyWithImpl<$Res>
    extends _$GetAuthenticationStateCopyWithImpl<$Res,
        _$_GetAuthenticationStateWarning>
    implements _$$_GetAuthenticationStateWarningCopyWith<$Res> {
  __$$_GetAuthenticationStateWarningCopyWithImpl(
      _$_GetAuthenticationStateWarning _value,
      $Res Function(_$_GetAuthenticationStateWarning) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetAuthenticationStateWarning
    implements _GetAuthenticationStateWarning {
  const _$_GetAuthenticationStateWarning();

  @override
  String toString() {
    return 'GetAuthenticationState.warning()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetAuthenticationStateWarning);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(String success) success,
    required TResult Function(String failed) failed,
    required TResult Function() warning,
  }) {
    return warning();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(String success)? success,
    TResult? Function(String failed)? failed,
    TResult? Function()? warning,
  }) {
    return warning?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(String success)? success,
    TResult Function(String failed)? failed,
    TResult Function()? warning,
    required TResult orElse(),
  }) {
    if (warning != null) {
      return warning();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAuthenticationStateInitial value) initial,
    required TResult Function(_GetAuthenticationStateinProgress value)
        inProgress,
    required TResult Function(_GetAuthenticationStateSuccess value) success,
    required TResult Function(_GetAuthenticationStateFailed value) failed,
    required TResult Function(_GetAuthenticationStateWarning value) warning,
  }) {
    return warning(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAuthenticationStateInitial value)? initial,
    TResult? Function(_GetAuthenticationStateinProgress value)? inProgress,
    TResult? Function(_GetAuthenticationStateSuccess value)? success,
    TResult? Function(_GetAuthenticationStateFailed value)? failed,
    TResult? Function(_GetAuthenticationStateWarning value)? warning,
  }) {
    return warning?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAuthenticationStateInitial value)? initial,
    TResult Function(_GetAuthenticationStateinProgress value)? inProgress,
    TResult Function(_GetAuthenticationStateSuccess value)? success,
    TResult Function(_GetAuthenticationStateFailed value)? failed,
    TResult Function(_GetAuthenticationStateWarning value)? warning,
    required TResult orElse(),
  }) {
    if (warning != null) {
      return warning(this);
    }
    return orElse();
  }
}

abstract class _GetAuthenticationStateWarning
    implements GetAuthenticationState {
  const factory _GetAuthenticationStateWarning() =
      _$_GetAuthenticationStateWarning;
}
