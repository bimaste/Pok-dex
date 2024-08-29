import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../stores/pokemon_store.dart';

class PokemonListPage extends StatelessWidget {
  final PokemonStore pokemonStore;

  const PokemonListPage({super.key, required this.pokemonStore});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokédex'),
        centerTitle: true,
      ),
      body: Observer(
        builder: (_) {
          if (pokemonStore.pokemons.isEmpty) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          return ListView.builder(
            padding: const EdgeInsets.all(8.0),
            itemCount: pokemonStore.pokemons.length,
            itemBuilder: (context, index) {
              final pokemon = pokemonStore.pokemons[index];
              return Card(
                elevation: 4,
                margin: const EdgeInsets.symmetric(vertical: 8.0),
                child: ListTile(
                  contentPadding: const EdgeInsets.all(8.0),
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      pokemon.url,
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => const Icon(Icons.error),
                    ),
                  ),
                  title: Text(
                    pokemon.name,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  onTap: () {

                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
