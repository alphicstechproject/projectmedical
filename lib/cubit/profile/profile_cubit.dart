import 'dart:convert';

import 'package:application_1/model/employee/employee.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;

part 'profile_state.dart';
part 'profile_cubit.freezed.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit()
      : super(
          ProfileState.initial(),
        );

  Future<void> getProfileDetails() async {
    final corebox = await Hive.openBox('core');
    final String employeeID =
        corebox.get('employeeID', defaultValue: '').toString();
    try {
      emit(
        state.copyWith(
          getProfileDetails: const GetProfileDetails.inProgress(),
        ),
      );
      final response = await http.get(
        Uri.parse("https://api.anemiamuktakalahandi.in/api/employee"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      final result = jsonDecode(response.body);

      emit(
        state.copyWith(
          employeeData: (result['data'] as List)
              .map(
                (reports) => EmployeeData.fromJson(reports),
              )
              .toList(),
        ),
      );
      emit(
        state.copyWith(
          currentEmployeeData: state.employeeData
              .where((element) => element.sId == employeeID)
              .first,
          getProfileDetails: GetProfileDetails.success(
            success: result['message'],
          ),
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          getProfileDetails: const GetProfileDetails.failed(
            failed: 'Error',
          ),
        ),
      );
    }
  }
}
