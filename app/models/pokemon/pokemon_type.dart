// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class PokemonType {
  String name;
  String url;

  PokemonType({
    required this.name,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'url': url,
    };
  }

  factory PokemonType.fromMap(Map<String, dynamic> map) {
    return PokemonType(
      name: map['name'] as String,
      url: map['url'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory PokemonType.fromJson(String source) =>
      PokemonType.fromMap(json.decode(source) as Map<String, dynamic>);
}
