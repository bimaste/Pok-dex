import 'package:flutter/foundation.dart';
import 'package:mobx/mobx.dart';

import '../../domain/entities/pokemon.dart';
import '../../domain/repositories/pokemon_repository.dart';


part 'pokemon_store.g.dart';

class PokemonStore = _PokemonStoreBase with _$PokemonStore;

abstract class _PokemonStoreBase with Store {
  final PokemonRepository pokemonRepository;

  @observable
  ObservableList<Pokemon> pokemons = ObservableList<Pokemon>();

  _PokemonStoreBase({required this.pokemonRepository}) {
    _fetchPokemons();
  }

  @action
  Future<void> _fetchPokemons() async {
    try {
      final fetchedPokemons = await pokemonRepository.getAllPokemons();
      pokemons.addAll(fetchedPokemons);
    } catch (e) {
      if (kDebugMode) {
        print('Error fetching pokemons: $e');
      }
    }
  }
}
