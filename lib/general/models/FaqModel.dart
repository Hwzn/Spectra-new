
class FaqModel {
  final int id;
  final String question;
  final String answer;
  bool opened;

  FaqModel({
    required  this.id,
    required this.question,
    required this.answer,
    this.opened = false,
  });
}
