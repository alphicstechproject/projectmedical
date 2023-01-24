// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileState {
  GetProfileDetails get getProfileDetails => throw _privateConstructorUsedError;
  List<EmployeeData> get employeeData => throw _privateConstructorUsedError;
  EmployeeData get currentEmployeeData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call(
      {GetProfileDetails getProfileDetails,
      List<EmployeeData> employeeData,
      EmployeeData currentEmployeeData});

  $GetProfileDetailsCopyWith<$Res> get getProfileDetails;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getProfileDetails = null,
    Object? employeeData = null,
    Object? currentEmployeeData = null,
  }) {
    return _then(_value.copyWith(
      getProfileDetails: null == getProfileDetails
          ? _value.getProfileDetails
          : getProfileDetails // ignore: cast_nullable_to_non_nullable
              as GetProfileDetails,
      employeeData: null == employeeData
          ? _value.employeeData
          : employeeData // ignore: cast_nullable_to_non_nullable
              as List<EmployeeData>,
      currentEmployeeData: null == currentEmployeeData
          ? _value.currentEmployeeData
          : currentEmployeeData // ignore: cast_nullable_to_non_nullable
              as EmployeeData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GetProfileDetailsCopyWith<$Res> get getProfileDetails {
    return $GetProfileDetailsCopyWith<$Res>(_value.getProfileDetails, (value) {
      return _then(_value.copyWith(getProfileDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProfileStateCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$_ProfileStateCopyWith(
          _$_ProfileState value, $Res Function(_$_ProfileState) then) =
      __$$_ProfileStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GetProfileDetails getProfileDetails,
      List<EmployeeData> employeeData,
      EmployeeData currentEmployeeData});

  @override
  $GetProfileDetailsCopyWith<$Res> get getProfileDetails;
}

/// @nodoc
class __$$_ProfileStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$_ProfileState>
    implements _$$_ProfileStateCopyWith<$Res> {
  __$$_ProfileStateCopyWithImpl(
      _$_ProfileState _value, $Res Function(_$_ProfileState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getProfileDetails = null,
    Object? employeeData = null,
    Object? currentEmployeeData = null,
  }) {
    return _then(_$_ProfileState(
      getProfileDetails: null == getProfileDetails
          ? _value.getProfileDetails
          : getProfileDetails // ignore: cast_nullable_to_non_nullable
              as GetProfileDetails,
      employeeData: null == employeeData
          ? _value._employeeData
          : employeeData // ignore: cast_nullable_to_non_nullable
              as List<EmployeeData>,
      currentEmployeeData: null == currentEmployeeData
          ? _value.currentEmployeeData
          : currentEmployeeData // ignore: cast_nullable_to_non_nullable
              as EmployeeData,
    ));
  }
}

/// @nodoc

class _$_ProfileState implements _ProfileState {
  const _$_ProfileState(
      {required this.getProfileDetails,
      required final List<EmployeeData> employeeData,
      required this.currentEmployeeData})
      : _employeeData = employeeData;

  @override
  final GetProfileDetails getProfileDetails;
  final List<EmployeeData> _employeeData;
  @override
  List<EmployeeData> get employeeData {
    if (_employeeData is EqualUnmodifiableListView) return _employeeData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_employeeData);
  }

  @override
  final EmployeeData currentEmployeeData;

  @override
  String toString() {
    return 'ProfileState(getProfileDetails: $getProfileDetails, employeeData: $employeeData, currentEmployeeData: $currentEmployeeData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileState &&
            (identical(other.getProfileDetails, getProfileDetails) ||
                other.getProfileDetails == getProfileDetails) &&
            const DeepCollectionEquality()
                .equals(other._employeeData, _employeeData) &&
            (identical(other.currentEmployeeData, currentEmployeeData) ||
                other.currentEmployeeData == currentEmployeeData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getProfileDetails,
      const DeepCollectionEquality().hash(_employeeData), currentEmployeeData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileStateCopyWith<_$_ProfileState> get copyWith =>
      __$$_ProfileStateCopyWithImpl<_$_ProfileState>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
      {required final GetProfileDetails getProfileDetails,
      required final List<EmployeeData> employeeData,
      required final EmployeeData currentEmployeeData}) = _$_ProfileState;

  @override
  GetProfileDetails get getProfileDetails;
  @override
  List<EmployeeData> get employeeData;
  @override
  EmployeeData get currentEmployeeData;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileStateCopyWith<_$_ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetProfileDetails {
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
    required TResult Function(_GetProfileDetailsInitial value) initial,
    required TResult Function(_GetProfileDetailsinProgress value) inProgress,
    required TResult Function(_GetProfileDetailsSuccess value) success,
    required TResult Function(_GetProfileDetailsFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProfileDetailsInitial value)? initial,
    TResult? Function(_GetProfileDetailsinProgress value)? inProgress,
    TResult? Function(_GetProfileDetailsSuccess value)? success,
    TResult? Function(_GetProfileDetailsFailed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProfileDetailsInitial value)? initial,
    TResult Function(_GetProfileDetailsinProgress value)? inProgress,
    TResult Function(_GetProfileDetailsSuccess value)? success,
    TResult Function(_GetProfileDetailsFailed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProfileDetailsCopyWith<$Res> {
  factory $GetProfileDetailsCopyWith(
          GetProfileDetails value, $Res Function(GetProfileDetails) then) =
      _$GetProfileDetailsCopyWithImpl<$Res, GetProfileDetails>;
}

/// @nodoc
class _$GetProfileDetailsCopyWithImpl<$Res, $Val extends GetProfileDetails>
    implements $GetProfileDetailsCopyWith<$Res> {
  _$GetProfileDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetProfileDetailsInitialCopyWith<$Res> {
  factory _$$_GetProfileDetailsInitialCopyWith(
          _$_GetProfileDetailsInitial value,
          $Res Function(_$_GetProfileDetailsInitial) then) =
      __$$_GetProfileDetailsInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetProfileDetailsInitialCopyWithImpl<$Res>
    extends _$GetProfileDetailsCopyWithImpl<$Res, _$_GetProfileDetailsInitial>
    implements _$$_GetProfileDetailsInitialCopyWith<$Res> {
  __$$_GetProfileDetailsInitialCopyWithImpl(_$_GetProfileDetailsInitial _value,
      $Res Function(_$_GetProfileDetailsInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetProfileDetailsInitial implements _GetProfileDetailsInitial {
  const _$_GetProfileDetailsInitial();

  @override
  String toString() {
    return 'GetProfileDetails.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetProfileDetailsInitial);
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
    required TResult Function(_GetProfileDetailsInitial value) initial,
    required TResult Function(_GetProfileDetailsinProgress value) inProgress,
    required TResult Function(_GetProfileDetailsSuccess value) success,
    required TResult Function(_GetProfileDetailsFailed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProfileDetailsInitial value)? initial,
    TResult? Function(_GetProfileDetailsinProgress value)? inProgress,
    TResult? Function(_GetProfileDetailsSuccess value)? success,
    TResult? Function(_GetProfileDetailsFailed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProfileDetailsInitial value)? initial,
    TResult Function(_GetProfileDetailsinProgress value)? inProgress,
    TResult Function(_GetProfileDetailsSuccess value)? success,
    TResult Function(_GetProfileDetailsFailed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _GetProfileDetailsInitial implements GetProfileDetails {
  const factory _GetProfileDetailsInitial() = _$_GetProfileDetailsInitial;
}

/// @nodoc
abstract class _$$_GetProfileDetailsinProgressCopyWith<$Res> {
  factory _$$_GetProfileDetailsinProgressCopyWith(
          _$_GetProfileDetailsinProgress value,
          $Res Function(_$_GetProfileDetailsinProgress) then) =
      __$$_GetProfileDetailsinProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetProfileDetailsinProgressCopyWithImpl<$Res>
    extends _$GetProfileDetailsCopyWithImpl<$Res,
        _$_GetProfileDetailsinProgress>
    implements _$$_GetProfileDetailsinProgressCopyWith<$Res> {
  __$$_GetProfileDetailsinProgressCopyWithImpl(
      _$_GetProfileDetailsinProgress _value,
      $Res Function(_$_GetProfileDetailsinProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetProfileDetailsinProgress implements _GetProfileDetailsinProgress {
  const _$_GetProfileDetailsinProgress();

  @override
  String toString() {
    return 'GetProfileDetails.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetProfileDetailsinProgress);
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
    required TResult Function(_GetProfileDetailsInitial value) initial,
    required TResult Function(_GetProfileDetailsinProgress value) inProgress,
    required TResult Function(_GetProfileDetailsSuccess value) success,
    required TResult Function(_GetProfileDetailsFailed value) failed,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProfileDetailsInitial value)? initial,
    TResult? Function(_GetProfileDetailsinProgress value)? inProgress,
    TResult? Function(_GetProfileDetailsSuccess value)? success,
    TResult? Function(_GetProfileDetailsFailed value)? failed,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProfileDetailsInitial value)? initial,
    TResult Function(_GetProfileDetailsinProgress value)? inProgress,
    TResult Function(_GetProfileDetailsSuccess value)? success,
    TResult Function(_GetProfileDetailsFailed value)? failed,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _GetProfileDetailsinProgress implements GetProfileDetails {
  const factory _GetProfileDetailsinProgress() = _$_GetProfileDetailsinProgress;
}

/// @nodoc
abstract class _$$_GetProfileDetailsSuccessCopyWith<$Res> {
  factory _$$_GetProfileDetailsSuccessCopyWith(
          _$_GetProfileDetailsSuccess value,
          $Res Function(_$_GetProfileDetailsSuccess) then) =
      __$$_GetProfileDetailsSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({String success});
}

/// @nodoc
class __$$_GetProfileDetailsSuccessCopyWithImpl<$Res>
    extends _$GetProfileDetailsCopyWithImpl<$Res, _$_GetProfileDetailsSuccess>
    implements _$$_GetProfileDetailsSuccessCopyWith<$Res> {
  __$$_GetProfileDetailsSuccessCopyWithImpl(_$_GetProfileDetailsSuccess _value,
      $Res Function(_$_GetProfileDetailsSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
  }) {
    return _then(_$_GetProfileDetailsSuccess(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetProfileDetailsSuccess implements _GetProfileDetailsSuccess {
  const _$_GetProfileDetailsSuccess({required this.success});

  @override
  final String success;

  @override
  String toString() {
    return 'GetProfileDetails.success(success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetProfileDetailsSuccess &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode => Object.hash(runtimeType, success);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetProfileDetailsSuccessCopyWith<_$_GetProfileDetailsSuccess>
      get copyWith => __$$_GetProfileDetailsSuccessCopyWithImpl<
          _$_GetProfileDetailsSuccess>(this, _$identity);

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
    required TResult Function(_GetProfileDetailsInitial value) initial,
    required TResult Function(_GetProfileDetailsinProgress value) inProgress,
    required TResult Function(_GetProfileDetailsSuccess value) success,
    required TResult Function(_GetProfileDetailsFailed value) failed,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProfileDetailsInitial value)? initial,
    TResult? Function(_GetProfileDetailsinProgress value)? inProgress,
    TResult? Function(_GetProfileDetailsSuccess value)? success,
    TResult? Function(_GetProfileDetailsFailed value)? failed,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProfileDetailsInitial value)? initial,
    TResult Function(_GetProfileDetailsinProgress value)? inProgress,
    TResult Function(_GetProfileDetailsSuccess value)? success,
    TResult Function(_GetProfileDetailsFailed value)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _GetProfileDetailsSuccess implements GetProfileDetails {
  const factory _GetProfileDetailsSuccess({required final String success}) =
      _$_GetProfileDetailsSuccess;

  String get success;
  @JsonKey(ignore: true)
  _$$_GetProfileDetailsSuccessCopyWith<_$_GetProfileDetailsSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetProfileDetailsFailedCopyWith<$Res> {
  factory _$$_GetProfileDetailsFailedCopyWith(_$_GetProfileDetailsFailed value,
          $Res Function(_$_GetProfileDetailsFailed) then) =
      __$$_GetProfileDetailsFailedCopyWithImpl<$Res>;
  @useResult
  $Res call({String failed});
}

/// @nodoc
class __$$_GetProfileDetailsFailedCopyWithImpl<$Res>
    extends _$GetProfileDetailsCopyWithImpl<$Res, _$_GetProfileDetailsFailed>
    implements _$$_GetProfileDetailsFailedCopyWith<$Res> {
  __$$_GetProfileDetailsFailedCopyWithImpl(_$_GetProfileDetailsFailed _value,
      $Res Function(_$_GetProfileDetailsFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failed = null,
  }) {
    return _then(_$_GetProfileDetailsFailed(
      failed: null == failed
          ? _value.failed
          : failed // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetProfileDetailsFailed implements _GetProfileDetailsFailed {
  const _$_GetProfileDetailsFailed({required this.failed});

  @override
  final String failed;

  @override
  String toString() {
    return 'GetProfileDetails.failed(failed: $failed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetProfileDetailsFailed &&
            (identical(other.failed, failed) || other.failed == failed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetProfileDetailsFailedCopyWith<_$_GetProfileDetailsFailed>
      get copyWith =>
          __$$_GetProfileDetailsFailedCopyWithImpl<_$_GetProfileDetailsFailed>(
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
    required TResult Function(_GetProfileDetailsInitial value) initial,
    required TResult Function(_GetProfileDetailsinProgress value) inProgress,
    required TResult Function(_GetProfileDetailsSuccess value) success,
    required TResult Function(_GetProfileDetailsFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProfileDetailsInitial value)? initial,
    TResult? Function(_GetProfileDetailsinProgress value)? inProgress,
    TResult? Function(_GetProfileDetailsSuccess value)? success,
    TResult? Function(_GetProfileDetailsFailed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProfileDetailsInitial value)? initial,
    TResult Function(_GetProfileDetailsinProgress value)? inProgress,
    TResult Function(_GetProfileDetailsSuccess value)? success,
    TResult Function(_GetProfileDetailsFailed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _GetProfileDetailsFailed implements GetProfileDetails {
  const factory _GetProfileDetailsFailed({required final String failed}) =
      _$_GetProfileDetailsFailed;

  String get failed;
  @JsonKey(ignore: true)
  _$$_GetProfileDetailsFailedCopyWith<_$_GetProfileDetailsFailed>
      get copyWith => throw _privateConstructorUsedError;
}
