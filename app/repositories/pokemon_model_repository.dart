import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:pokedex/app/models/pokemon/pokemon_model.dart';

class PokemonModelRepository {
  Future<List<PokemonModel>> buscarTodos() async {
    final pokemonModelResponse =
        await http.get(Uri.parse('https://pokeapi.com/api/v2/pokemon'));

    final pokemonsModelList = jsonDecode(pokemonModelResponse.body);

    return pokemonsModelList
        .map<PokemonModel>(
            (pokemonModelMap) => PokemonModel.fromMap(pokemonModelMap))
        .toList();
  }
}
