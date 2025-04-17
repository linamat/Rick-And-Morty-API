import 'package:rick_and_morty/data/characters/dto/character_dto.dart';
import 'package:rick_and_morty/data/characters/dto/info_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'characters_dto.freezed.dart';
part 'characters_dto.g.dart';

@freezed
class CharactersDto with _$CharactersDto {
  const factory CharactersDto({
    @Default([]) List<CharacterDto> results,
    InfoDto? info,
  }) = _CharactersDto;

  factory CharactersDto.fromJson(Map<String, dynamic> json) =>
      _$CharactersDtoFromJson(json);
}
