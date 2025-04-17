import 'package:rick_and_morty/data/characters/dto/location_dto.dart';
import 'package:rick_and_morty/data/characters/dto/origin_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_dto.freezed.dart';
part 'character_dto.g.dart';

@freezed
class CharacterDto with _$CharacterDto {
  const factory CharacterDto({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String status,
    @Default('') String species,
    @Default('') String type,
    @Default('') String gender,
    @Default('') String image,
    @Default('') String url,
    @Default('') String created,
    @Default([]) List<String> episode,
    LocationDto? location,
    OriginDto? origin,
  }) = _CharacterDto;

  factory CharacterDto.fromJson(Map<String, dynamic> json) =>
      _$CharacterDtoFromJson(json);
}
