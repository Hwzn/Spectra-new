class AddFilterModel {
  String? rate;
  String? price;
  String? orderCount;
  String? alphabetic;

  AddFilterModel({
    this.rate,
    this.price,
    this.orderCount,
    this.alphabetic,
  });

  Map<String, dynamic> toJson() => {
        if (rate != null) "rate": rate,
        if (price != null) "price": price,
        if (orderCount != null) "orderCount": orderCount,
        if (alphabetic != null) "alphabetic": alphabetic,
      };
}
