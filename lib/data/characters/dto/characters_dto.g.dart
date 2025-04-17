// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'characters_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CharactersDtoImpl _$$CharactersDtoImplFromJson(Map<String, dynamic> json) =>
    _$CharactersDtoImpl(
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => CharacterDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      info: json['info'] == null
          ? null
          : InfoDto.fromJson(json['info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CharactersDtoImplToJson(_$CharactersDtoImpl instance) =>
    <String, dynamic>{
      'results': instance.results,
      'info': instance.info,
    };
