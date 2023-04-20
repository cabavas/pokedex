// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Form {
  String name;
  String url;

  Form({
    required this.name,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'url': url,
    };
  }

  factory Form.fromMap(Map<String, dynamic> map) {
    return Form(
      name: map['name'] as String,
      url: map['url'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Form.fromJson(String source) =>
      Form.fromMap(json.decode(source) as Map<String, dynamic>);
}
