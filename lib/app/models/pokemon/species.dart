// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Species {
  String name;
  String url;

  Species({
    required this.name,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'url': url,
    };
  }

  factory Species.fromMap(Map<String, dynamic> map) {
    return Species(
      name: map['name'] as String,
      url: map['url'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Species.fromJson(String source) =>
      Species.fromMap(json.decode(source) as Map<String, dynamic>);
}
