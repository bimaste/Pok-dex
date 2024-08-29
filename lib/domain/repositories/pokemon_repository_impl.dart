import 'package:pokedex/domain/repositories/pokemon_repository.dart';

import '../datasources/pokemon_remote_data_source.dart';
import '../entities/pokemon.dart';
import '../models/pokemon_model.dart';

class PokemonRepositoryImpl implements PokemonRepository {
  final PokemonRemoteDataSource remoteDataSource;

  PokemonRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List<Pokemon>> getAllPokemons() async {
    try {
      final List<PokemonModel> pokemonModels = await remoteDataSource.getAllPokemons();

      return pokemonModels.map((model) => model.toEntity()).toList();
    } catch (e) {
      throw Exception('Failed to fetch Pokémons');
    }
  }
}
