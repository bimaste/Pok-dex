import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pokedex/presentation/pages/pokemon_list_page.dart';
import 'package:pokedex/presentation/stores/pokemon_store.dart';
import 'package:pokedex/core/injection_container.dart' as di;

void main() async {
  await di.setup();

  runApp(const PokedexApp());
}

class PokedexApp extends StatelessWidget {
  const PokedexApp({super.key});

  @override
  Widget build(BuildContext context) {
    final pokemonStore = GetIt.instance<PokemonStore>();

    return MaterialApp(
      title: 'Pokedex App',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PokemonListPage(pokemonStore: pokemonStore),
    );
  }
}
