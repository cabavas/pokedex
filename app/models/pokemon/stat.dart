// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Stat {
  String name;
  String url;

  Stat({
    required this.name,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'url': url,
    };
  }

  factory Stat.fromMap(Map<String, dynamic> map) {
    return Stat(
      name: map['name'] as String,
      url: map['url'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Stat.fromJson(String source) =>
      Stat.fromMap(json.decode(source) as Map<String, dynamic>);
}
