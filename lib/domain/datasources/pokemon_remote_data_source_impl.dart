import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pokedex/domain/datasources/pokemon_remote_data_source.dart';

import '../models/pokemon_model.dart';


class PokemonRemoteDataSourceImpl implements PokemonRemoteDataSource {
  final http.Client client;

  PokemonRemoteDataSourceImpl({required this.client});

  @override
  Future<List<PokemonModel>> getAllPokemons() async {
    final response = await client.get(Uri.parse('https://pokeapi.co/api/v2/pokemon?limit=100'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final List<dynamic> results = data['results'];

      return results.map((json) => PokemonModel.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load pokemons');
    }
  }
}
