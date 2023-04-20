// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Version {
  String name;
  String url;

  Version({
    required this.name,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'url': url,
    };
  }

  factory Version.fromMap(Map<String, dynamic> map) {
    return Version(
      name: map['name'] as String,
      url: map['url'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Version.fromJson(String source) =>
      Version.fromMap(json.decode(source) as Map<String, dynamic>);
}
