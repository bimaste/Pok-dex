import 'package:get_it/get_it.dart';

import 'package:http/http.dart' as http;

import '../domain/datasources/pokemon_remote_data_source.dart';
import '../domain/datasources/pokemon_remote_data_source_impl.dart';
import '../domain/repositories/pokemon_repository.dart';
import '../domain/repositories/pokemon_repository_impl.dart';
import '../presentation/stores/pokemon_store.dart';

final sl = GetIt.instance;

Future<void> setup() async {
  sl.registerLazySingleton(() => http.Client());

  sl.registerLazySingleton<PokemonRemoteDataSource>(
        () => PokemonRemoteDataSourceImpl(client: sl()),
  );

  sl.registerLazySingleton<PokemonRepository>(
        () => PokemonRepositoryImpl(remoteDataSource: sl()),
  );

  sl.registerLazySingleton(() => PokemonStore(pokemonRepository: sl()));
}

