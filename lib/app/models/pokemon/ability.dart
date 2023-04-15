// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Ability {
  String name;
  String url;
  bool isHidden;
  int slot;

  Ability({
    required this.name,
    required this.url,
    required this.isHidden,
    required this.slot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'url': url,
      'isHidden': isHidden,
      'slot': slot,
    };
  }

  factory Ability.fromMap(Map<String, dynamic> map) {
    return Ability(
      name: map['name'] as String,
      url: map['url'] as String,
      isHidden: map['is_hidden'] as bool,
      slot: map['slot'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Ability.fromJson(String source) =>
      Ability.fromMap(json.decode(source) as Map<String, dynamic>);
}
