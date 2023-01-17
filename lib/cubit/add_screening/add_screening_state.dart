part of 'add_screening_cubit.dart';

@freezed
class AddScreeningState with _$AddScreeningState {
  const factory AddScreeningState({
    required String dateScreening,
    required String aadharcard,
    required String mobileNo,
  }) = _AddScreeningState;

  factory AddScreeningState.initial() => AddScreeningState(
        dateScreening: DateFormat('dd-MM-yyyy').format(
          DateTime.now(),
        ),
        aadharcard: '',
        mobileNo: '',
      );
}
