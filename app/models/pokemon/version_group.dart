// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class VersionGroup {
  String name;
  String url;

  VersionGroup({
    required this.name,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'url': url,
    };
  }

  factory VersionGroup.fromMap(Map<String, dynamic> map) {
    return VersionGroup(
      name: map['name'] as String,
      url: map['url'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory VersionGroup.fromJson(String source) =>
      VersionGroup.fromMap(json.decode(source) as Map<String, dynamic>);
}
