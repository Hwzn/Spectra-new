import 'package:json_annotation/json_annotation.dart';

part 'QuestionModel.g.dart';

@JsonSerializable()
class QuestionModel {
  @JsonKey(name: "id")
  int id;
  @JsonKey(name: "question")
  String question;
  @JsonKey(name: "answer")
  String answer;
  @JsonKey(defaultValue: false)
  bool opened;

  QuestionModel({
    required this.id,
    required this.question,
    required this.answer,
    this.opened = false,
  });

  factory QuestionModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionModelFromJson(json);

  Map<String, dynamic> toJson() => _$QuestionModelToJson(this);
}
