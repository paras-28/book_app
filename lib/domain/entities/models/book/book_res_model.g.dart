// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookResModelImpl _$$BookResModelImplFromJson(Map<String, dynamic> json) =>
    _$BookResModelImpl(
      number: (json['number'] as num?)?.toInt(),
      title: json['title'] as String?,
      originalTitle: json['originalTitle'] as String?,
      releaseDate: json['releaseDate'] as String?,
      description: json['description'] as String?,
      pages: (json['pages'] as num?)?.toInt(),
      cover: json['cover'] as String?,
      index: (json['index'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$BookResModelImplToJson(_$BookResModelImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'title': instance.title,
      'originalTitle': instance.originalTitle,
      'releaseDate': instance.releaseDate,
      'description': instance.description,
      'pages': instance.pages,
      'cover': instance.cover,
      'index': instance.index,
    };
