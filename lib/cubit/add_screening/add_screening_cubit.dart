import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'add_screening_state.dart';
part 'add_screening_cubit.freezed.dart';

class AddScreeningCubit extends Cubit<AddScreeningState> {
  AddScreeningCubit()
      : super(
          AddScreeningState.initial(),
        );

  void dateSelect({
    required String date,
  }) async {
    emit(
      state.copyWith(
        dateScreening: date,
      ),
    );
  }

  void aadharcardOnchange({
    required String aadharcard,
  }) async {
    emit(
      state.copyWith(
        aadharcard: aadharcard,
      ),
    );
  }

  void mobileNoOnchange({
    required String mobileNo,
  }) async {
    emit(
      state.copyWith(
        mobileNo: mobileNo,
      ),
    );
  }
}
