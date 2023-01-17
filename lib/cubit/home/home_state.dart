part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required GetAllScreening getAllScreening,
    required List<ScreeningModel> screeningData,
  }) = _HomeState;

  factory HomeState.initial() => const HomeState(
        getAllScreening: GetAllScreening.initial(),
        screeningData: [],
      );
}

@freezed
class GetAllScreening with _$GetAllScreening {
  const factory GetAllScreening.initial() = _GetAllScreeningInitial;
  const factory GetAllScreening.inProgress() = _GetAllScreeninginProgress;
  const factory GetAllScreening.success({
    required String success,
  }) = _GetAllScreeningSuccess;
  const factory GetAllScreening.failed({
    required String failed,
  }) = _GetAllScreeningFailed;
}
