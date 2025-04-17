import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/data/characters/dto/character_dto.dart';
import 'package:rick_and_morty/presentation/characters/enums/status_type.dart';

part 'character_card_view_model.freezed.dart';

@freezed
class CharacterCardViewModel with _$CharacterCardViewModel {
  const factory CharacterCardViewModel({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String imageUrl,
    @Default('') String species,
    @Default('') String type,
    @Default('') String gender,
    @Default('') String url,
    @Default('') String created,
    @Default([]) List<String> episode,
    @Default('') String firstLocation,
    @Default('') String lastLocation,
    @Default(StatusType.alive) StatusType status,
  }) = _CharacterCardViewModel;

  factory CharacterCardViewModel.fromDto(CharacterDto dto) {
    return CharacterCardViewModel(
      id: dto.id,
      name: dto.name,
      imageUrl: dto.image,
      status: StatusType.fromString(dto.status),
      species: dto.species,
      type: dto.type,
      gender: dto.gender,
      url: dto.url,
      created: dto.created,
      episode: dto.episode,
      firstLocation: dto.origin?.name ?? '',
      lastLocation: dto.location?.name ?? '',
    );
  }
}


