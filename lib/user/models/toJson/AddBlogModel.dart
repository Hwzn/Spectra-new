import 'dart:io';

class AddBlogModel {
  int categoryId;
  List<File>? images;
  String content;
  String? address;
  String? lat;
  String? lng;

  AddBlogModel({
    required this.categoryId,
    required this.content,
    this.address,
    this.lat,
    this.lng,
    this.images,
  });

  Map<String, dynamic> toJson() => {
        "category_id": categoryId,
        "images[]": images,
        "content": content,
        "address": address,
        "lat": lat,
        "lng": lng,
      };
}
