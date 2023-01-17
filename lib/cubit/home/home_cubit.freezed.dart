// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
  GetAllScreening get getAllScreening => throw _privateConstructorUsedError;
  List<ScreeningModel> get screeningData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {GetAllScreening getAllScreening, List<ScreeningModel> screeningData});

  $GetAllScreeningCopyWith<$Res> get getAllScreening;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getAllScreening = null,
    Object? screeningData = null,
  }) {
    return _then(_value.copyWith(
      getAllScreening: null == getAllScreening
          ? _value.getAllScreening
          : getAllScreening // ignore: cast_nullable_to_non_nullable
              as GetAllScreening,
      screeningData: null == screeningData
          ? _value.screeningData
          : screeningData // ignore: cast_nullable_to_non_nullable
              as List<ScreeningModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GetAllScreeningCopyWith<$Res> get getAllScreening {
    return $GetAllScreeningCopyWith<$Res>(_value.getAllScreening, (value) {
      return _then(_value.copyWith(getAllScreening: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GetAllScreening getAllScreening, List<ScreeningModel> screeningData});

  @override
  $GetAllScreeningCopyWith<$Res> get getAllScreening;
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeState>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getAllScreening = null,
    Object? screeningData = null,
  }) {
    return _then(_$_HomeState(
      getAllScreening: null == getAllScreening
          ? _value.getAllScreening
          : getAllScreening // ignore: cast_nullable_to_non_nullable
              as GetAllScreening,
      screeningData: null == screeningData
          ? _value._screeningData
          : screeningData // ignore: cast_nullable_to_non_nullable
              as List<ScreeningModel>,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {required this.getAllScreening,
      required final List<ScreeningModel> screeningData})
      : _screeningData = screeningData;

  @override
  final GetAllScreening getAllScreening;
  final List<ScreeningModel> _screeningData;
  @override
  List<ScreeningModel> get screeningData {
    if (_screeningData is EqualUnmodifiableListView) return _screeningData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_screeningData);
  }

  @override
  String toString() {
    return 'HomeState(getAllScreening: $getAllScreening, screeningData: $screeningData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            (identical(other.getAllScreening, getAllScreening) ||
                other.getAllScreening == getAllScreening) &&
            const DeepCollectionEquality()
                .equals(other._screeningData, _screeningData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getAllScreening,
      const DeepCollectionEquality().hash(_screeningData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required final GetAllScreening getAllScreening,
      required final List<ScreeningModel> screeningData}) = _$_HomeState;

  @override
  GetAllScreening get getAllScreening;
  @override
  List<ScreeningModel> get screeningData;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetAllScreening {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(String success) success,
    required TResult Function(String failed) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(String success)? success,
    TResult? Function(String failed)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(String success)? success,
    TResult Function(String failed)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllScreeningInitial value) initial,
    required TResult Function(_GetAllScreeninginProgress value) inProgress,
    required TResult Function(_GetAllScreeningSuccess value) success,
    required TResult Function(_GetAllScreeningFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllScreeningInitial value)? initial,
    TResult? Function(_GetAllScreeninginProgress value)? inProgress,
    TResult? Function(_GetAllScreeningSuccess value)? success,
    TResult? Function(_GetAllScreeningFailed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllScreeningInitial value)? initial,
    TResult Function(_GetAllScreeninginProgress value)? inProgress,
    TResult Function(_GetAllScreeningSuccess value)? success,
    TResult Function(_GetAllScreeningFailed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllScreeningCopyWith<$Res> {
  factory $GetAllScreeningCopyWith(
          GetAllScreening value, $Res Function(GetAllScreening) then) =
      _$GetAllScreeningCopyWithImpl<$Res, GetAllScreening>;
}

/// @nodoc
class _$GetAllScreeningCopyWithImpl<$Res, $Val extends GetAllScreening>
    implements $GetAllScreeningCopyWith<$Res> {
  _$GetAllScreeningCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetAllScreeningInitialCopyWith<$Res> {
  factory _$$_GetAllScreeningInitialCopyWith(_$_GetAllScreeningInitial value,
          $Res Function(_$_GetAllScreeningInitial) then) =
      __$$_GetAllScreeningInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetAllScreeningInitialCopyWithImpl<$Res>
    extends _$GetAllScreeningCopyWithImpl<$Res, _$_GetAllScreeningInitial>
    implements _$$_GetAllScreeningInitialCopyWith<$Res> {
  __$$_GetAllScreeningInitialCopyWithImpl(_$_GetAllScreeningInitial _value,
      $Res Function(_$_GetAllScreeningInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetAllScreeningInitial implements _GetAllScreeningInitial {
  const _$_GetAllScreeningInitial();

  @override
  String toString() {
    return 'GetAllScreening.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetAllScreeningInitial);
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
    required TResult Function(_GetAllScreeningInitial value) initial,
    required TResult Function(_GetAllScreeninginProgress value) inProgress,
    required TResult Function(_GetAllScreeningSuccess value) success,
    required TResult Function(_GetAllScreeningFailed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllScreeningInitial value)? initial,
    TResult? Function(_GetAllScreeninginProgress value)? inProgress,
    TResult? Function(_GetAllScreeningSuccess value)? success,
    TResult? Function(_GetAllScreeningFailed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllScreeningInitial value)? initial,
    TResult Function(_GetAllScreeninginProgress value)? inProgress,
    TResult Function(_GetAllScreeningSuccess value)? success,
    TResult Function(_GetAllScreeningFailed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _GetAllScreeningInitial implements GetAllScreening {
  const factory _GetAllScreeningInitial() = _$_GetAllScreeningInitial;
}

/// @nodoc
abstract class _$$_GetAllScreeninginProgressCopyWith<$Res> {
  factory _$$_GetAllScreeninginProgressCopyWith(
          _$_GetAllScreeninginProgress value,
          $Res Function(_$_GetAllScreeninginProgress) then) =
      __$$_GetAllScreeninginProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetAllScreeninginProgressCopyWithImpl<$Res>
    extends _$GetAllScreeningCopyWithImpl<$Res, _$_GetAllScreeninginProgress>
    implements _$$_GetAllScreeninginProgressCopyWith<$Res> {
  __$$_GetAllScreeninginProgressCopyWithImpl(
      _$_GetAllScreeninginProgress _value,
      $Res Function(_$_GetAllScreeninginProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetAllScreeninginProgress implements _GetAllScreeninginProgress {
  const _$_GetAllScreeninginProgress();

  @override
  String toString() {
    return 'GetAllScreening.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetAllScreeninginProgress);
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
    required TResult Function(_GetAllScreeningInitial value) initial,
    required TResult Function(_GetAllScreeninginProgress value) inProgress,
    required TResult Function(_GetAllScreeningSuccess value) success,
    required TResult Function(_GetAllScreeningFailed value) failed,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllScreeningInitial value)? initial,
    TResult? Function(_GetAllScreeninginProgress value)? inProgress,
    TResult? Function(_GetAllScreeningSuccess value)? success,
    TResult? Function(_GetAllScreeningFailed value)? failed,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllScreeningInitial value)? initial,
    TResult Function(_GetAllScreeninginProgress value)? inProgress,
    TResult Function(_GetAllScreeningSuccess value)? success,
    TResult Function(_GetAllScreeningFailed value)? failed,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _GetAllScreeninginProgress implements GetAllScreening {
  const factory _GetAllScreeninginProgress() = _$_GetAllScreeninginProgress;
}

/// @nodoc
abstract class _$$_GetAllScreeningSuccessCopyWith<$Res> {
  factory _$$_GetAllScreeningSuccessCopyWith(_$_GetAllScreeningSuccess value,
          $Res Function(_$_GetAllScreeningSuccess) then) =
      __$$_GetAllScreeningSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({String success});
}

/// @nodoc
class __$$_GetAllScreeningSuccessCopyWithImpl<$Res>
    extends _$GetAllScreeningCopyWithImpl<$Res, _$_GetAllScreeningSuccess>
    implements _$$_GetAllScreeningSuccessCopyWith<$Res> {
  __$$_GetAllScreeningSuccessCopyWithImpl(_$_GetAllScreeningSuccess _value,
      $Res Function(_$_GetAllScreeningSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
  }) {
    return _then(_$_GetAllScreeningSuccess(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetAllScreeningSuccess implements _GetAllScreeningSuccess {
  const _$_GetAllScreeningSuccess({required this.success});

  @override
  final String success;

  @override
  String toString() {
    return 'GetAllScreening.success(success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetAllScreeningSuccess &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode => Object.hash(runtimeType, success);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetAllScreeningSuccessCopyWith<_$_GetAllScreeningSuccess> get copyWith =>
      __$$_GetAllScreeningSuccessCopyWithImpl<_$_GetAllScreeningSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(String success) success,
    required TResult Function(String failed) failed,
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
    required TResult Function(_GetAllScreeningInitial value) initial,
    required TResult Function(_GetAllScreeninginProgress value) inProgress,
    required TResult Function(_GetAllScreeningSuccess value) success,
    required TResult Function(_GetAllScreeningFailed value) failed,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllScreeningInitial value)? initial,
    TResult? Function(_GetAllScreeninginProgress value)? inProgress,
    TResult? Function(_GetAllScreeningSuccess value)? success,
    TResult? Function(_GetAllScreeningFailed value)? failed,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllScreeningInitial value)? initial,
    TResult Function(_GetAllScreeninginProgress value)? inProgress,
    TResult Function(_GetAllScreeningSuccess value)? success,
    TResult Function(_GetAllScreeningFailed value)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _GetAllScreeningSuccess implements GetAllScreening {
  const factory _GetAllScreeningSuccess({required final String success}) =
      _$_GetAllScreeningSuccess;

  String get success;
  @JsonKey(ignore: true)
  _$$_GetAllScreeningSuccessCopyWith<_$_GetAllScreeningSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetAllScreeningFailedCopyWith<$Res> {
  factory _$$_GetAllScreeningFailedCopyWith(_$_GetAllScreeningFailed value,
          $Res Function(_$_GetAllScreeningFailed) then) =
      __$$_GetAllScreeningFailedCopyWithImpl<$Res>;
  @useResult
  $Res call({String failed});
}

/// @nodoc
class __$$_GetAllScreeningFailedCopyWithImpl<$Res>
    extends _$GetAllScreeningCopyWithImpl<$Res, _$_GetAllScreeningFailed>
    implements _$$_GetAllScreeningFailedCopyWith<$Res> {
  __$$_GetAllScreeningFailedCopyWithImpl(_$_GetAllScreeningFailed _value,
      $Res Function(_$_GetAllScreeningFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failed = null,
  }) {
    return _then(_$_GetAllScreeningFailed(
      failed: null == failed
          ? _value.failed
          : failed // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetAllScreeningFailed implements _GetAllScreeningFailed {
  const _$_GetAllScreeningFailed({required this.failed});

  @override
  final String failed;

  @override
  String toString() {
    return 'GetAllScreening.failed(failed: $failed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetAllScreeningFailed &&
            (identical(other.failed, failed) || other.failed == failed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetAllScreeningFailedCopyWith<_$_GetAllScreeningFailed> get copyWith =>
      __$$_GetAllScreeningFailedCopyWithImpl<_$_GetAllScreeningFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(String success) success,
    required TResult Function(String failed) failed,
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
    required TResult Function(_GetAllScreeningInitial value) initial,
    required TResult Function(_GetAllScreeninginProgress value) inProgress,
    required TResult Function(_GetAllScreeningSuccess value) success,
    required TResult Function(_GetAllScreeningFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllScreeningInitial value)? initial,
    TResult? Function(_GetAllScreeninginProgress value)? inProgress,
    TResult? Function(_GetAllScreeningSuccess value)? success,
    TResult? Function(_GetAllScreeningFailed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllScreeningInitial value)? initial,
    TResult Function(_GetAllScreeninginProgress value)? inProgress,
    TResult Function(_GetAllScreeningSuccess value)? success,
    TResult Function(_GetAllScreeningFailed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _GetAllScreeningFailed implements GetAllScreening {
  const factory _GetAllScreeningFailed({required final String failed}) =
      _$_GetAllScreeningFailed;

  String get failed;
  @JsonKey(ignore: true)
  _$$_GetAllScreeningFailedCopyWith<_$_GetAllScreeningFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
