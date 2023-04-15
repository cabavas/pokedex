// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'pokemon_type.dart';

class Types {
  int slot;
  PokemonType pokemonType;

  Types({
    required this.slot,
    required this.pokemonType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'slot': slot,
      'pokemonType': pokemonType.toMap(),
    };
  }

  factory Types.fromMap(Map<String, dynamic> map) {
    return Types(
      slot: map['slot'] as int,
      pokemonType:
          PokemonType.fromMap(map['pokemonType'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory Types.fromJson(String source) =>
      Types.fromMap(json.decode(source) as Map<String, dynamic>);
}
