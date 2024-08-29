import '../entities/pokemon.dart';

class PokemonModel {
  final String name;
  final String url;

  PokemonModel({required this.name, required this.url});

  factory PokemonModel.fromJson(Map<String, dynamic> json) {
    return PokemonModel(
      name: json['name'],
      url: 'https://img.pokemondb.net/artwork/${json['name']}.jpg',
    );
  }

  Pokemon toEntity() {
    return Pokemon(name: name, url: url);
  }
}
