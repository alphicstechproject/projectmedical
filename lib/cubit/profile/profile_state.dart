part of 'profile_cubit.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    required GetProfileDetails getProfileDetails,
    required List<EmployeeData> employeeData,
    required EmployeeData currentEmployeeData,
  }) = _ProfileState;

  factory ProfileState.initial() => ProfileState(
        getProfileDetails: GetProfileDetails.initial(),
        employeeData: [
          EmployeeData(
            anganwadiCenter: '',
            blockName: '',
            createdAt: '',
            district: '',
            employeeName: '',
            fullName: '',
            iV: 0,
            isDeleted: false,
            mobile: '',
            password: '',
            role: '',
            sId: '',
            status: '',
            subCenter: '',
            updatedAt: '',
            villageName: '',
          ),
        ],
        currentEmployeeData: EmployeeData(
          anganwadiCenter: '',
          blockName: '',
          createdAt: '',
          district: '',
          employeeName: '',
          fullName: '',
          iV: 0,
          isDeleted: false,
          mobile: '',
          password: '',
          role: '',
          sId: '',
          status: '',
          subCenter: '',
          updatedAt: '',
          villageName: '',
        ),
      );
}

@freezed
class GetProfileDetails with _$GetProfileDetails {
  const factory GetProfileDetails.initial() = _GetProfileDetailsInitial;
  const factory GetProfileDetails.inProgress() = _GetProfileDetailsinProgress;
  const factory GetProfileDetails.success({
    required String success,
  }) = _GetProfileDetailsSuccess;
  const factory GetProfileDetails.failed({
    required String failed,
  }) = _GetProfileDetailsFailed;
}
