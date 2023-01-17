import 'package:application_1/model/screening/screening_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_model.freezed.dart';
part 'home_model.g.dart';

@freezed
abstract class HomeModel with _$HomeModel {
  const factory HomeModel({
    required List<ScreeningModel> screeningData,
  }) = _HomeModel;

  factory HomeModel.initial() => const HomeModel(
        screeningData: [],
      );

  /// to map data into model
  factory HomeModel.fromJson(Map<String, dynamic> json) =>
      _$HomeModelFromJson(json);
}
