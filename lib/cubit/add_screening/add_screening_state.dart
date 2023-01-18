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
        getBlock: const GetBlock.initial(),
        block: [],
        education: '',
        selectedBlock: '',
        getCenter: const GetCenter.initial(),
        center: [],
        selectedCenter: '',
        anganwadiCenter: '',
        village: '',
        ashaWorker: '',
        pageNo: 1,
        getAnm: const GetAnm.initial(),
        employeeData: [],
        selectedAnm: '',
        height: '',
        weight: '',
        bmi: 0.0,
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
