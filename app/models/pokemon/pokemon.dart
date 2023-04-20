// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:pokedex/app/models/pokemon/ability.dart';

import 'form.dart';
import 'game_indices.dart';
import 'moves.dart';
import 'species.dart';
import 'sprites.dart';
import 'stats.dart';
import 'types.dart';

class Pokemon {
  List<Ability> ability;
  int baseExp;
  List<Form> form;
  List<GameIndices> gameIndices;
  int height;
  int id;
  bool isDefault;
  String location;
  List<Moves> moves;
  String name;
  Species species;
  Sprites sprite;
  List<Stats> stats;
  Types type;
  int weight;

  Pokemon({
    required this.ability,
    required this.baseExp,
    required this.form,
    required this.gameIndices,
    required this.height,
    required this.id,
    required this.isDefault,
    required this.location,
    required this.moves,
    required this.name,
    required this.species,
    required this.sprite,
    required this.stats,
    required this.type,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ability': ability.map((x) => x.toMap()).toList(),
      'baseExp': baseExp,
      'form': form.map((x) => x.toMap()).toList(),
      'gameIndices': gameIndices.map((x) => x.toMap()).toList(),
      'height': height,
      'id': id,
      'isDefault': isDefault,
      'location': location,
      'moves': moves.map((x) => x.toMap()).toList(),
      'name': name,
      'species': species.toMap(),
      'sprite': sprite,
      'stats': stats.map((x) => x.toMap()).toList(),
      'type': type.toMap(),
      'weight': weight,
    };
  }

  factory Pokemon.fromMap(Map<String, dynamic> map) {
    return Pokemon(
      ability: List<Ability>.from(
        (map['ability'] as List<int>).map<Ability>(
          (x) => Ability.fromMap(x as Map<String, dynamic>),
        ),
      ),
      baseExp: map['base_experience'] as int,
      form: List<Form>.from(
        (map['form'] as List<int>).map<Form>(
          (x) => Form.fromMap(x as Map<String, dynamic>),
        ),
      ),
      gameIndices: List<GameIndices>.from(
        (map['game_indices'] as List<int>).map<GameIndices>(
          (x) => GameIndices.fromMap(x as Map<String, dynamic>),
        ),
      ),
      height: map['height'] as int,
      id: map['id'] as int,
      isDefault: map['is_default'] as bool,
      location: map['location'] as String,
      moves: List<Moves>.from(
        (map['moves'] as List<int>).map<Moves>(
          (x) => Moves.fromMap(x as Map<String, dynamic>),
        ),
      ),
      name: map['name'] as String,
      species: Species.fromMap(map['species'] as Map<String, dynamic>),
      sprite: map['front_default'] as Sprites,
      stats: List<Stats>.from(
        (map['stats'] as List<int>).map<Stats>(
          (x) => Stats.fromMap(x as Map<String, dynamic>),
        ),
      ),
      type: Types.fromMap(map['type'] as Map<String, dynamic>),
      weight: map['weight'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Pokemon.fromJson(String source) =>
      Pokemon.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Pokemon: $name, Id: $id';
}
