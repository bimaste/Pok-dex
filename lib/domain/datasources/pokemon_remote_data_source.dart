import '../models/pokemon_model.dart';

abstract class PokemonRemoteDataSource {
  Future<List<PokemonModel>> getAllPokemons();
}
