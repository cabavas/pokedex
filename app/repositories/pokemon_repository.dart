import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/pokemon/pokemon.dart';

class PokemonRepository {
  Future<List<Pokemon>> buscarTodos() async {
    final pokemonResponse =
        await http.get(Uri.parse('https://pokeapi.com/api/v2/pokemon'));

    final pokemonsList = jsonDecode(pokemonResponse.body);

    return pokemonsList
        .map<Pokemon>((pokemonMap) => Pokemon.fromMap(pokemonMap))
        .toList();
  }

  Future<Pokemon> buscarPorId(int id) async {
    final pokemonResponse =
        await http.get(Uri.parse('https://pokeapi.com/api/v2/pokemon/$id'));

    return Pokemon.fromJson(pokemonResponse.body);
  }
}
