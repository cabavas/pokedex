// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Sprites {
  String backDefault;
  String backShiny;
  String frontDefault;
  String frontShiny;

  Sprites({
    required this.backDefault,
    required this.backShiny,
    required this.frontDefault,
    required this.frontShiny,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backDefault': backDefault,
      'backShiny': backShiny,
      'frontDefault': frontDefault,
      'frontShiny': frontShiny,
    };
  }

  factory Sprites.fromMap(Map<String, dynamic> map) {
    return Sprites(
      backDefault: map['backDefault'] as String,
      backShiny: map['backShiny'] as String,
      frontDefault: map['frontDefault'] as String,
      frontShiny: map['frontShiny'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Sprites.fromJson(String source) =>
      Sprites.fromMap(json.decode(source) as Map<String, dynamic>);
}
