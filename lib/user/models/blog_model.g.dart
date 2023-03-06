// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blog_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BlogModel _$BlogModelFromJson(Map<String, dynamic> json) => BlogModel(
      id: json['id'] as int,
      publisherId: json['publisher_id'] as int,
      publisherName: json['publisher_name'] as String,
      blogImages: (json['blogImages'] as List<dynamic>)
          .map((e) => DropDownModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      lat: json['lat'] as String?,
      lng: json['lng'] as String?,
      address: json['address'] as String?,
      category: json['category'] as String,
      commentsCount: json['comments_count'] as int,
      likesCount: json['likes_count'] as int,
      comments: (json['comments'] as List<dynamic>)
          .map((e) => CommentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      content: json['content'] as String,
      timePosted: json['time_posted'] as String,
      publisherImage: json['publisher_image'] as String,
      isLiked: json['is_liked'] as bool,
    );

Map<String, dynamic> _$BlogModelToJson(BlogModel instance) => <String, dynamic>{
      'id': instance.id,
      'publisher_id': instance.publisherId,
      'publisher_name': instance.publisherName,
      'publisher_image': instance.publisherImage,
      'blogImages': instance.blogImages,
      'lat': instance.lat,
      'lng': instance.lng,
      'address': instance.address,
      'category': instance.category,
      'comments_count': instance.commentsCount,
      'likes_count': instance.likesCount,
      'comments': instance.comments,
      'content': instance.content,
      'time_posted': instance.timePosted,
      'is_liked': instance.isLiked,
    };
