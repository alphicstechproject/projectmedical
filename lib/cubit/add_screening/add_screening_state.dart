part of 'add_screening_cubit.dart';

@freezed
class AddScreeningState with _$AddScreeningState {
  const factory AddScreeningState({
    required String dateScreening,
    required String aadharcard,
    required String mobileNo,
    required String respondent,
    required String father,
    required String age,
    required List<Map<String, dynamic>> cast,
    required List<Map<String, dynamic>> respondentType,
    required String gestAge,
    required bool gestAgeShow,
    required GetBlock getBlock,
    required List<String> block,
    required String education,
    required String selectedBlock,
    required GetCenter getCenter,
    required List<String> center,
    required String selectedCenter,
    required String anganwadiCenter,
    required String village,
    required String ashaWorker,
    required int pageNo,
    required GetAnm getAnm,
    required List<String> employeeData,
    required String selectedAnm,
    required String weight,
    required String height,
    required double bmi,
    required List<Map<String, dynamic>> ifa,
    required List<Map<String, dynamic>> ancCheckup,
    required String serviceDiscontinue,
    required String hb,
    required String selectedRespondantType,
    required String statusAnaemia,
    required List<Map<String, dynamic>> malaria,
    required List<Map<String, dynamic>> sickelCell,
    required SaveData saveData,
    required bool firstError,
    required bool secondError,
    required bool thirdError,
    required bool fourError,
    required GetAdvised getAdvised,
    required List<String> advisedDescription,
    required String referHospital,
    required String otherAdvise,
    required String schoolName,
    required List<Map<String, dynamic>> schoolData,
    required List<Map<String, dynamic>> currentSchool,
    required String selectedcurrentSchool,
    required String typeSchool,
    required bool schoolDetailsShow,
  }) = _AddScreeningState;

  factory AddScreeningState.initial() => AddScreeningState(
        dateScreening: DateFormat('dd-MM-yyyy').format(
          DateTime.now(),
        ),
        aadharcard: '',
        mobileNo: '',
        respondent: '',
        father: '',
        age: '',
        cast: [
          {
            'cast': 'SC',
            'selected': false,
          },
          {
            'cast': 'ST',
            'selected': false,
          },
          {
            'cast': 'Other',
            'selected': false,
          },
        ],
        respondentType: [
          {
            'type': 'Pregnant Women',
            'selected': false,
          },
          {
            'type': 'Adolescents girls (Tribal School)',
            'selected': false,
          },
          {
            'type': 'Adolescents girls (Non School going)',
            'selected': false,
          },
        ],
        gestAge: '',
        gestAgeShow: false,
        schoolDetailsShow: false,
        getBlock: const GetBlock.initial(),
        block: [],
        education: '',
        selectedBlock: '',
        getCenter: const GetCenter.initial(),
        center: [],
        selectedCenter: '',
        anganwadiCenter: '',
        village: '',
        schoolName: '',
        ashaWorker: '',
        pageNo: 1,
        getAnm: const GetAnm.initial(),
        employeeData: [],
        selectedAnm: '',
        height: '',
        weight: '',
        bmi: 0.0,
        ifa: [
          {
            'type': 'Yes',
            'selected': false,
          },
          {
            'type': 'No',
            'selected': false,
          },
        ],
        ancCheckup: [
          {
            'type': 'Yes',
            'selected': false,
          },
          {
            'type': 'No',
            'selected': false,
          },
        ],
        serviceDiscontinue: '',
        hb: '',
        selectedRespondantType: '',
        malaria: [
          {
            'type': 'Yes',
            'selected': false,
          },
          {
            'type': 'No',
            'selected': false,
          },
          {
            'type': 'Do not Know',
            'selected': false,
          },
        ],
        sickelCell: [
          {
            'type': 'Yes',
            'selected': false,
          },
          {
            'type': 'No',
            'selected': false,
          },
          {
            'type': 'Do not Know',
            'selected': false,
          },
        ],
        saveData: const SaveData.initial(),
        firstError: false,
        fourError: false,
        secondError: false,
        thirdError: false,
        getAdvised: const GetAdvised.initial(),
        statusAnaemia: '',
        advisedDescription: [],
        referHospital: '',
        otherAdvise: '',
        currentSchool: [
          {
            'type': 'Yes',
            'selected': false,
          },
          {
            'type': 'No',
            'selected': false,
          },
        ],
        schoolData: [
          {
            'type': 'Goverment',
            'selected': false,
          },
          {
            'type': 'Goverment aided',
            'selected': false,
          },
          {
            'type': 'Private',
            'selected': false,
          },
        ],
        selectedcurrentSchool: '',
        typeSchool: '',
      );
}

@freezed
class GetBlock with _$GetBlock {
  const factory GetBlock.initial() = _GetBlockInitial;
  const factory GetBlock.inProgress() = _GetBlockinProgress;
  const factory GetBlock.success({
    required String success,
  }) = _GetBlockSuccess;
  const factory GetBlock.failed({
    required String failed,
  }) = _GetBlockFailed;
}

@freezed
class GetCenter with _$GetCenter {
  const factory GetCenter.initial() = _GetCenterInitial;
  const factory GetCenter.inProgress() = _GetCenterinProgress;
  const factory GetCenter.success({
    required String success,
  }) = _GetCenterSuccess;
  const factory GetCenter.failed({
    required String failed,
  }) = _GetCenterFailed;
}

@freezed
class GetAnm with _$GetAnm {
  const factory GetAnm.initial() = _GetAnmInitial;
  const factory GetAnm.inProgress() = _GetAnminProgress;
  const factory GetAnm.success({
    required String success,
  }) = _GetAnmSuccess;
  const factory GetAnm.failed({
    required String failed,
  }) = _GetAnmFailed;
}

@freezed
class GetAdvised with _$GetAdvised {
  const factory GetAdvised.initial() = _GetAdvisedInitial;
  const factory GetAdvised.inProgress() = _GetAdvisedinProgress;
  const factory GetAdvised.success({
    required String success,
  }) = _GetAdvisedSuccess;
  const factory GetAdvised.failed({
    required String failed,
  }) = _GetAdvisedFailed;
}

@freezed
class SaveData with _$SaveData {
  const factory SaveData.initial() = _SaveDataInitial;
  const factory SaveData.inProgress() = _SaveDatainProgress;
  const factory SaveData.success({
    required String success,
  }) = _SaveDataSuccess;
  const factory SaveData.failed({
    required String failed,
  }) = _SaveDataFailed;
}
