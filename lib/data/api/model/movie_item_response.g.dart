// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieItemResponse _$MovieItemResponseFromJson(Map<String, dynamic> json) {
  return MovieItemResponse(
    json['title'] as String,
    json['poster_path'] as String,
  );
}

Map<String, dynamic> _$MovieItemResponseToJson(MovieItemResponse instance) =>
    <String, dynamic>{
      'title': instance.title,
      'poster_path': instance.posterPath,
    };
