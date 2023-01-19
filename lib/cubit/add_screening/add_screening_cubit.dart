import 'dart:convert';

import 'package:application_1/model/add_screening/employee.dart';
import 'package:application_1/model/advised/advised.dart';
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
        selectedRespondantType: selctedData,
        gestAgeShow: selctedData == 'Pregnant Women',
        schoolDetailsShow: selctedData == 'Adolescents girls (Tribal School)',
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

  void currentSchoolFieldChnage({
    required int selectedIndex,
  }) async {
    List<Map<String, dynamic>> data = [];
    final selctedData = state.currentSchool[selectedIndex]['type'];
    for (dynamic currentSchoolModel in state.currentSchool) {
      data.add({
        'type': currentSchoolModel['type'],
        'selected': selctedData == currentSchoolModel['type'] ? true : false,
      });
    }

    emit(
      state.copyWith(
        currentSchool: data,
        selectedcurrentSchool: selctedData,
      ),
    );
  }

  void schoolOnchange({
    required int selectedIndex,
  }) async {
    List<Map<String, dynamic>> data = [];
    final selctedData = state.schoolData[selectedIndex]['type'];
    for (dynamic schoolDataModel in state.schoolData) {
      data.add({
        'type': schoolDataModel['type'],
        'selected': selctedData == schoolDataModel['type'] ? true : false,
      });
    }

    emit(
      state.copyWith(
        schoolData: data,
        typeSchool: selctedData,
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

  void schoolNameFieldChnage({
    required String schoolName,
  }) async {
    emit(
      state.copyWith(
        schoolName: schoolName,
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

  //   if (state.pageNo == 1) {
  //   /// ADD ANM worker
  //   // if (state.dateScreening.isNotEmpty &&
  //   //     state.aadharcard.isNotEmpty &&
  //   //     state.mobileNo.isNotEmpty &&
  //   //     state.respondent.isNotEmpty &&
  //   //     state.father.isNotEmpty &&
  //   //     state.age.isNotEmpty &&
  //   //     state.cast.where((element) => element['selected']).isNotEmpty &&
  //   //     state.respondentType
  //   //         .where((element) => element['selected'])
  //   //         .isNotEmpty &&
  //   //     state.education.isNotEmpty &&
  //   //     state.selectedBlock.isNotEmpty &&
  //   //     state.selectedCenter.isNotEmpty &&
  //   //     state.anganwadiCenter.isNotEmpty &&
  //   //     state.village.isNotEmpty &&
  //   //     state.ashaWorker.isNotEmpty) {
  //   //   if (state.respondentType
  //   //           .where((element) => element['selected'])
  //   //           .first['type'] ==
  //   //       'Pregnant Women') {
  //   //     if (state.gestAge.isNotEmpty) {
  //   //       // true
  //   //     } else {
  //   //       // false
  //   //     }
  //   //   }
  //   //   // true

  // } else {}

  void pageChange() async {
    if (state.pageNo == 1) {
      if (state.dateScreening.isNotEmpty &&
          state.aadharcard.isNotEmpty &&
          state.mobileNo.isNotEmpty &&
          state.respondent.isNotEmpty &&
          state.father.isNotEmpty &&
          state.age.isNotEmpty &&
          state.cast.where((element) => element['selected']).first.isNotEmpty &&
          state.selectedRespondantType.isNotEmpty &&
          state.education.isNotEmpty &&
          state.selectedBlock.isNotEmpty &&
          state.selectedCenter.isNotEmpty &&
          state.anganwadiCenter.isNotEmpty &&
          state.village.isNotEmpty &&
          // state.selectedAnm.isNotEmpty &&
          state.ashaWorker.isNotEmpty) {
        emit(
          state.copyWith(
            pageNo: state.pageNo + 1,
            firstError: false,
          ),
        );
      } else {
        emit(
          state.copyWith(
            firstError: true,
          ),
        );
        emit(
          state.copyWith(
            firstError: false,
          ),
        );
      }
    } else if (state.pageNo == 2) {
      if (state.weight.isNotEmpty && state.height.isNotEmpty) {
        emit(
          state.copyWith(
            pageNo: state.pageNo + 1,
            secondError: false,
          ),
        );
      } else {
        emit(
          state.copyWith(
            secondError: true,
          ),
        );
        emit(
          state.copyWith(
            secondError: false,
          ),
        );
      }
    } else if (state.pageNo == 3) {
      if (state.ifa.where((element) => element['selected']).first.isNotEmpty &&
          state.serviceDiscontinue.isNotEmpty) {
        emit(
          state.copyWith(
            pageNo: state.pageNo + 1,
            thirdError: false,
          ),
        );
      } else {
        emit(
          state.copyWith(
            thirdError: true,
          ),
        );
        emit(
          state.copyWith(
            thirdError: false,
          ),
        );
      }
    } else if (state.pageNo == 4) {
      if (state.hb.isNotEmpty &&
          state.statusAnaemia.isNotEmpty &&
          state.malaria
              .where((element) => element['selected'])
              .first
              .isNotEmpty &&
          state.sickelCell
              .where((element) => element['selected'])
              .first
              .isNotEmpty) {
        emit(
          state.copyWith(
            pageNo: state.pageNo + 1,
            fourError: false,
          ),
        );
        getAdvised();
      } else {
        emit(
          state.copyWith(
            fourError: true,
          ),
        );
        emit(
          state.copyWith(
            fourError: false,
          ),
        );
      }
    } else {
      try {
        emit(
          state.copyWith(
            saveData: const SaveData.inProgress(),
          ),
        );
        final response = await http.post(
          Uri.parse("https://projectmedical.onrender.com/api/respondent"),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonEncode(
            {
              "aadhar_no": state.aadharcard,
              "creation_date": state.dateScreening,
              "respondent_name": state.respondent,
              "mobile": state.mobileNo,
            },
          ),
        );

        final result = jsonDecode(response.body);

        final response2 = await http.post(
          Uri.parse("https://projectmedical.onrender.com/api/screening"),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonEncode(
            {
              "respondent_name": state.respondent,
              "screening_date": state.dateScreening,
              "type_of_respondent": state.selectedRespondantType,
              //////
              "support_person_type": 'Father',
              //////
              "support_person_name": state.father,
              "age": state.age,
              "caste": state.cast
                  .where((element) => element['selected'])
                  .first['cast'],
              "gest_age": state.gestAge,
              //////
              "school_status": state.currentSchool,
              "type_of_school": state.typeSchool,
              "school_name": state.schoolName,
              //////
              "block": state.selectedBlock,
              "village": state.village,
              "anganwadi_center": state.anganwadiCenter,
              "sub_center": state.selectedCenter,
              "asha_name": state.ashaWorker,
              "anm_name": state.selectedAnm,
              "weight": state.weight,
              "height": state.height,

              "bmi": state.bmi,
              "service_question_one": 'no',
              "service_question_two": state.ifa
                  .where((element) => element['selected'])
                  .first['type'],
              "service_question_three": state.serviceDiscontinue,
              "service_question_four": state.ancCheckup
                  .where((element) => element['selected'])
                  .first['type'],

              //////
              "status_question_one": state.hb,
              //////
              "status_hblevel": state.statusAnaemia,
              //////
              "status_question_three": state.malaria
                  .where((element) => element['selected'])
                  .first['type'],
              "status_question_four": state.sickelCell
                  .where((element) => element['selected'])
                  .first['type'],
              //////
              "advices_description": state.advisedDescription.length > 0
                  ? state.advisedDescription[0]
                  : 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.',
              "blood_transfusion_center": "bhawanipatna",
              "blood_transfusion_date": '13-12-2022',
              "screening_person_name": 'mohit lal',
              "screening_person_desgination": "medical supervisor",
              "screening_no": '21',
              "extra_note":
                  state.otherAdvise.isNotEmpty ? state.otherAdvise : 'nothing',
              //////
            },
          ),
        );

        final result2 = jsonDecode(response2.body);
        if (result2['status']) {
          emit(
            state.copyWith(
              saveData: SaveData.success(
                success: result2['message'],
              ),
            ),
          );
        } else {
          emit(
            state.copyWith(
              saveData: SaveData.failed(
                failed: result2['message'],
              ),
            ),
          );
        }
      } catch (e) {
        emit(
          state.copyWith(
            saveData: const SaveData.failed(
              failed: 'Error',
            ),
          ),
        );
      }
    }
  }

  //--------------------------------- adVISED -----------------------//

  Future<void> getAdvised() async {
    try {
      emit(
        state.copyWith(
          getAdvised: const GetAdvised.inProgress(),
        ),
      );
      final response = await http.get(
        Uri.parse("https://projectmedical.onrender.com/api/advice"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      final result = jsonDecode(response.body);
      final employeeData = (result['data'] as List)
          .map(
            (reports) => AdvisedData.fromJson(reports),
          )
          .toList();
      final data = employeeData
          .where((element) =>
              element.respondentTitle == state.respondentType &&
              element.anemiaStage == state.statusAnaemia)
          .map((e) => e.description!)
          .toList();

      emit(
        state.copyWith(
          advisedDescription: data,
          getAdvised: GetAdvised.success(
            success: result['message'],
          ),
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          getAdvised: const GetAdvised.failed(
            failed: 'Error',
          ),
        ),
      );
    }
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
//--------------------------------- 3 -----------------------//

  void ifaOnchange({
    required int selectedIndex,
  }) async {
    List<Map<String, dynamic>> data = [];
    final selctedData = state.ifa[selectedIndex]['type'];
    for (dynamic ifaModel in state.ifa) {
      data.add({
        'type': ifaModel['type'],
        'selected': selctedData == ifaModel['type'] ? true : false,
      });
    }

    emit(
      state.copyWith(
        ifa: data,
      ),
    );
  }

  void ancCheckupOnChange({
    required int selectedIndex,
  }) async {
    List<Map<String, dynamic>> data = [];
    final selctedData = state.ancCheckup[selectedIndex]['type'];
    for (dynamic ancModel in state.ancCheckup) {
      data.add({
        'type': ancModel['type'],
        'selected': selctedData == ancModel['type'] ? true : false,
      });
    }

    emit(
      state.copyWith(
        ancCheckup: data,
      ),
    );
  }

  void serviceDiscontinueOnchange({
    required String serviceDiscontinue,
  }) async {
    emit(
      state.copyWith(
        serviceDiscontinue: serviceDiscontinue,
      ),
    );
  }

  //--------------------------------- 4 -----------------------//

  void hbOnchange({
    required String hb,
  }) async {
    emit(
      state.copyWith(
        hb: hb,
        statusAnaemia: hb.isNotEmpty
            ? double.parse(hb) > 12 &&
                    (state.respondentType ==
                            'Adolescents girls (Tribal School)' ||
                        state.respondentType ==
                            'Adolescents girls (Non School going)')
                ? 'No Anemia'
                : (double.parse(hb) >= 11.0 && double.parse(hb) <= 11.9) &&
                        (state.respondentType ==
                                'Adolescents girls (Tribal School)' ||
                            state.respondentType ==
                                'Adolescents girls (Non School going)')
                    ? 'Mild Anemia'
                    : (double.parse(hb) >= 8.0 && double.parse(hb) <= 8.9) &&
                            (state.respondentType ==
                                    'Adolescents girls (Tribal School)' ||
                                state.respondentType ==
                                    'Adolescents girls (Non School going)')
                        ? 'Moderate Anemia'
                        : (double.parse(hb) >= 0.0 &&
                                    double.parse(hb) <= 8.0) &&
                                (state.respondentType ==
                                        'Adolescents girls (Tribal School)' ||
                                    state.respondentType ==
                                        'Adolescents girls (Non School going)')
                            ? 'Severe Anemia'
                            : double.parse(hb) > 11 &&
                                    state.respondentType == 'Pregnant Women'
                                ? 'No Anemia'
                                : (double.parse(hb) >= 10.0 &&
                                            double.parse(hb) <= 10.9) &&
                                        state.respondentType == 'Pregnant Women'
                                    ? 'Mild Anemia'
                                    : 'Not Anaemic'
            : 'Status',
      ),
    );
  }

  void sickelCellOnChange({
    required int selectedIndex,
  }) async {
    List<Map<String, dynamic>> data = [];
    final selctedData = state.sickelCell[selectedIndex]['type'];
    for (dynamic sickelCellModel in state.sickelCell) {
      data.add({
        'type': sickelCellModel['type'],
        'selected': selctedData == sickelCellModel['type'] ? true : false,
      });
    }

    emit(
      state.copyWith(
        sickelCell: data,
      ),
    );
  }

  void malariaOnChange({
    required int selectedIndex,
  }) async {
    List<Map<String, dynamic>> data = [];
    final selctedData = state.malaria[selectedIndex]['type'];
    for (dynamic malariaModel in state.malaria) {
      data.add({
        'type': malariaModel['type'],
        'selected': selctedData == malariaModel['type'] ? true : false,
      });
    }

    emit(
      state.copyWith(
        malaria: data,
      ),
    );
  }

  void referHospitalOnchange({
    required String referHospital,
  }) async {
    emit(
      state.copyWith(
        referHospital: referHospital,
      ),
    );
  }

  void addOtherAdviseOnchange({
    required String otherAdvise,
  }) async {
    emit(
      state.copyWith(
        otherAdvise: otherAdvise,
      ),
    );
  }
}
