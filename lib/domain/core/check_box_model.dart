import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_box_model.freezed.dart';

part 'check_box_model.g.dart';

@freezed
class CheckBoxModel with _$CheckBoxModel {
  factory CheckBoxModel({required int id, required String name}) =
      _CheckBoxModel;

  factory CheckBoxModel.fromJson(Map<String, dynamic> json) =>
      _$CheckBoxModelFromJson(json);
}
