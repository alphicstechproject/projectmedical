import 'dart:convert';

import 'package:application_1/model/add_screening/employee.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

part 'add_screening_state.dart';
part 'add_screening_cubit.freezed.dart';

class AddScreeningCubit extends Cubit<AddScreeningState> {
  AddScreeningCubit()
      : super(
          AddScreeningState.initial(),
        );

  Future<void> getAllBlock() async {
    try {
      emit(
        state.copyWith(
          getBlock: const GetBlock.inProgress(),
        ),
      );
      final response = await http.get(
        Uri.parse("https://projectmedical.onrender.com/api/block"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      final result = jsonDecode(response.body);
      final allBlock = result['data'];

      final data = <String>[];
      for (int i = 0; i < allBlock.length; i++) {
        data.add(result['data'][i]);
      }

      emit(
        state.copyWith(
          block: data,
          getBlock: GetBlock.success(
            success: result['message'],
          ),
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          getBlock: const GetBlock.failed(
            failed: 'Error',
          ),
        ),
      );
    }
  }

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

  void respondentOnchange({
    required String respondent,
  }) async {
    emit(
      state.copyWith(
        respondent: respondent,
      ),
    );
  }

  void fatherOnchange({
    required String father,
  }) async {
    emit(
      state.copyWith(
        father: father,
      ),
    );
  }

  void ageOnchange({
    required String age,
  }) async {
    emit(
      state.copyWith(
        age: age,
      ),
    );
  }

  void castOnchange({
    required int selectedIndex,
  }) async {
    List<Map<String, dynamic>> data = [];
    final selctedData = state.cast[selectedIndex]['cast'];
    for (dynamic castModel in state.cast) {
      data.add({
        'cast': castModel['cast'],
        'selected': selctedData == castModel['cast'] ? true : false,
      });
    }

    emit(
      state.copyWith(
        cast: data,
      ),
    );
  }

  void respondentTypeOnchange({
    required int selectedIndex,
  }) async {
    List<Map<String, dynamic>> data = [];
    final selctedData = state.respondentType[selectedIndex]['type'];
    for (dynamic castModel in state.respondentType) {
      data.add({
        'type': castModel['type'],
        'selected': selctedData == castModel['type'] ? true : false,
      });
    }

    emit(
      state.copyWith(
        respondentType: data,
        gestAgeShow: selctedData == 'Pregnant Women',
      ),
    );
  }

  void guestAgeOnchange({
    required String gestAge,
  }) async {
    emit(
      state.copyWith(
        gestAge: gestAge,
      ),
    );
  }

  void educationOnchange({
    required String education,
  }) async {
    emit(
      state.copyWith(
        education: education,
      ),
    );
  }

  void blockOnchange({
    required String block,
  }) async {
    emit(
      state.copyWith(
        selectedBlock: block,
        selectedCenter: '',
        center: [],
      ),
    );
    getAllCenter();
  }

  Future<void> getAllCenter() async {
    try {
      emit(
        state.copyWith(
          getCenter: const GetCenter.inProgress(),
        ),
      );
      final response = await http.get(
        Uri.parse(
            "https://projectmedical.onrender.com/api/subCenter?block=${state.selectedBlock}"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      final result = jsonDecode(response.body);
      final allCenter = result['data'];

      final data = <String>[];
      for (int i = 0; i < allCenter.length; i++) {
        data.add(result['data'][i]);
      }

      emit(
        state.copyWith(
          center: data,
          getCenter: GetCenter.success(
            success: result['message'],
          ),
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          getCenter: const GetCenter.failed(
            failed: 'Error',
          ),
        ),
      );
    }
  }

  void centerOnchange({
    required String center,
  }) async {
    emit(
      state.copyWith(
        selectedCenter: center,
      ),
    );
    getAnmCenter();
  }

  void anganwadiCenterOnchange({
    required String anganwadiCenter,
  }) async {
    emit(
      state.copyWith(
        anganwadiCenter: anganwadiCenter,
      ),
    );
  }

  void villageOnchange({
    required String village,
  }) async {
    emit(
      state.copyWith(
        village: village,
      ),
    );
  }

  Future<void> getAnmCenter() async {
    try {
      emit(
        state.copyWith(
          getAnm: const GetAnm.inProgress(),
        ),
      );
      final response = await http.get(
        Uri.parse("https://projectmedical.onrender.com/api/employee"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      final result = jsonDecode(response.body);
      final employeeData = (result['data'] as List)
          .map(
            (reports) => EmployeeData.fromJson(reports),
          )
          .toList();
      final data = employeeData
          .where((element) => element.subCenter == state.selectedCenter)
          .map((e) => e.role!)
          .toList();

      emit(
        state.copyWith(
          employeeData: data,
          getAnm: GetAnm.success(
            success: result['message'],
          ),
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          getAnm: const GetAnm.failed(
            failed: 'Error',
          ),
        ),
      );
    }
  }

  void anmOnchange({
    required String anm,
  }) async {
    emit(
      state.copyWith(
        selectedAnm: anm,
      ),
    );
  }

  void ashaWorkerOnchange({
    required String ashaWorker,
  }) async {
    emit(
      state.copyWith(
        ashaWorker: ashaWorker,
      ),
    );
  }

  void pageChange() async {
    if (state.pageNo == 1) {
      /// ADD ANM worker
      // if (state.dateScreening.isNotEmpty &&
      //     state.aadharcard.isNotEmpty &&
      //     state.mobileNo.isNotEmpty &&
      //     state.respondent.isNotEmpty &&
      //     state.father.isNotEmpty &&
      //     state.age.isNotEmpty &&
      //     state.cast.where((element) => element['selected']).isNotEmpty &&
      //     state.respondentType
      //         .where((element) => element['selected'])
      //         .isNotEmpty &&
      //     state.education.isNotEmpty &&
      //     state.selectedBlock.isNotEmpty &&
      //     state.selectedCenter.isNotEmpty &&
      //     state.anganwadiCenter.isNotEmpty &&
      //     state.village.isNotEmpty &&
      //     state.ashaWorker.isNotEmpty) {
      //   if (state.respondentType
      //           .where((element) => element['selected'])
      //           .first['type'] ==
      //       'Pregnant Women') {
      //     if (state.gestAge.isNotEmpty) {
      //       // true
      //     } else {
      //       // false
      //     }
      //   }
      //   // true

    } else {}
    emit(
      state.copyWith(
        pageNo: state.pageNo + 1,
      ),
    );
  }

  //--------------------------------- 2 -----------------------//
  void weightOnchange({
    required String weight,
  }) async {
    emit(
      state.copyWith(
        weight: weight,
      ),
    );
    if (state.weight.isNotEmpty && state.height.isNotEmpty) {
      BmiCalculator();
    }
  }

  void heightOnchange({
    required String height,
  }) async {
    emit(
      state.copyWith(
        height: height,
      ),
    );
    if (state.weight.isNotEmpty && state.height.isNotEmpty) {
      BmiCalculator();
    }
  }

  void BmiCalculator() {
    var weight = double.parse(state.weight);
    var height = double.parse(state.height);

    final calculateHeight = height * 0.01;

    final bmi = weight / (calculateHeight * calculateHeight);
    emit(
      state.copyWith(
        bmi: bmi,
      ),
    );
  }
}
