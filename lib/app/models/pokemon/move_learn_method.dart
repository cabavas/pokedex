// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class MoveLearnMethod {
  String name;
  String url;

  MoveLearnMethod({
    required this.name,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'url': url,
    };
  }

  factory MoveLearnMethod.fromMap(Map<String, dynamic> map) {
    return MoveLearnMethod(
      name: map['name'] as String,
      url: map['url'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory MoveLearnMethod.fromJson(String source) =>
      MoveLearnMethod.fromMap(json.decode(source) as Map<String, dynamic>);
}
