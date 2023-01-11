
class FaqModel {
  final String question;
  final String answer;
  bool opened;

  FaqModel({
    required this.question,
    required this.answer,
    this.opened = false,
  });
}
