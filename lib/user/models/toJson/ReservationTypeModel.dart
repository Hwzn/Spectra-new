
class ReservationTypeModel {
  String name;
  String value;
  bool selected;

  ReservationTypeModel({
    required this.name,
    required this.value,
    this.selected = false,
  });
}
