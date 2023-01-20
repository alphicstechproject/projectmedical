import 'dart:convert';

import 'package:application_1/model/home/home_model.dart';
import 'package:application_1/model/screening/screening_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit()
      : super(
          HomeState.initial(),
        );

  Future<void> getAllScreening() async {
    try {
      emit(
        state.copyWith(
          getAllScreening: const GetAllScreening.inProgress(),
        ),
      );
      final response = await http.get(
        Uri.parse("https://api.anemiamuktakalahandi.in/api/screening"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      final result = jsonDecode(response.body);

      // final scrdata = (result['data'] as List)
      //     .map(
      //       (reports) => ScreeningModel.fromJson(reports),
      //     )
      //     .toList();
      // print(scrdata);

      emit(
        state.copyWith(
          screeningData: (result['data'] as List)
              .map(
                (reports) => ScreeningModel.fromJson(reports),
              )
              .toList(),
          getAllScreening: GetAllScreening.success(
            success: result['message'],
          ),
          // screeningData: (result['data'] as List)
          //     .map(
          //       (reports) => HomeModel.fromJson(reports),
          //     )
          //     .first
          //     .screeningData,
        ),
      );
    } catch (e) {
      print(e.toString());
      emit(
        state.copyWith(
          getAllScreening: const GetAllScreening.failed(
            failed: 'Error',
          ),
        ),
      );
    }
  }
}
