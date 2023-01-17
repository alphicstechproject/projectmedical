// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_screening_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddScreeningState {
  String get dateScreening => throw _privateConstructorUsedError;
  String get aadharcard => throw _privateConstructorUsedError;
  String get mobileNo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddScreeningStateCopyWith<AddScreeningState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddScreeningStateCopyWith<$Res> {
  factory $AddScreeningStateCopyWith(
          AddScreeningState value, $Res Function(AddScreeningState) then) =
      _$AddScreeningStateCopyWithImpl<$Res, AddScreeningState>;
  @useResult
  $Res call({String dateScreening, String aadharcard, String mobileNo});
}

/// @nodoc
class _$AddScreeningStateCopyWithImpl<$Res, $Val extends AddScreeningState>
    implements $AddScreeningStateCopyWith<$Res> {
  _$AddScreeningStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateScreening = null,
    Object? aadharcard = null,
    Object? mobileNo = null,
  }) {
    return _then(_value.copyWith(
      dateScreening: null == dateScreening
          ? _value.dateScreening
          : dateScreening // ignore: cast_nullable_to_non_nullable
              as String,
      aadharcard: null == aadharcard
          ? _value.aadharcard
          : aadharcard // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNo: null == mobileNo
          ? _value.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddScreeningStateCopyWith<$Res>
    implements $AddScreeningStateCopyWith<$Res> {
  factory _$$_AddScreeningStateCopyWith(_$_AddScreeningState value,
          $Res Function(_$_AddScreeningState) then) =
      __$$_AddScreeningStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String dateScreening, String aadharcard, String mobileNo});
}

/// @nodoc
class __$$_AddScreeningStateCopyWithImpl<$Res>
    extends _$AddScreeningStateCopyWithImpl<$Res, _$_AddScreeningState>
    implements _$$_AddScreeningStateCopyWith<$Res> {
  __$$_AddScreeningStateCopyWithImpl(
      _$_AddScreeningState _value, $Res Function(_$_AddScreeningState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateScreening = null,
    Object? aadharcard = null,
    Object? mobileNo = null,
  }) {
    return _then(_$_AddScreeningState(
      dateScreening: null == dateScreening
          ? _value.dateScreening
          : dateScreening // ignore: cast_nullable_to_non_nullable
              as String,
      aadharcard: null == aadharcard
          ? _value.aadharcard
          : aadharcard // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNo: null == mobileNo
          ? _value.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddScreeningState implements _AddScreeningState {
  const _$_AddScreeningState(
      {required this.dateScreening,
      required this.aadharcard,
      required this.mobileNo});

  @override
  final String dateScreening;
  @override
  final String aadharcard;
  @override
  final String mobileNo;

  @override
  String toString() {
    return 'AddScreeningState(dateScreening: $dateScreening, aadharcard: $aadharcard, mobileNo: $mobileNo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddScreeningState &&
            (identical(other.dateScreening, dateScreening) ||
                other.dateScreening == dateScreening) &&
            (identical(other.aadharcard, aadharcard) ||
                other.aadharcard == aadharcard) &&
            (identical(other.mobileNo, mobileNo) ||
                other.mobileNo == mobileNo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, dateScreening, aadharcard, mobileNo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddScreeningStateCopyWith<_$_AddScreeningState> get copyWith =>
      __$$_AddScreeningStateCopyWithImpl<_$_AddScreeningState>(
          this, _$identity);
}

abstract class _AddScreeningState implements AddScreeningState {
  const factory _AddScreeningState(
      {required final String dateScreening,
      required final String aadharcard,
      required final String mobileNo}) = _$_AddScreeningState;

  @override
  String get dateScreening;
  @override
  String get aadharcard;
  @override
  String get mobileNo;
  @override
  @JsonKey(ignore: true)
  _$$_AddScreeningStateCopyWith<_$_AddScreeningState> get copyWith =>
      throw _privateConstructorUsedError;
}
