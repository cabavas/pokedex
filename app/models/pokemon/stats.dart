// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'stat.dart';

class Stats {
  int baseStat;
  int effort;
  Stat stat;

  Stats({
    required this.baseStat,
    required this.effort,
    required this.stat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseStat': baseStat,
      'effort': effort,
      'stat': stat.toMap(),
    };
  }

  factory Stats.fromMap(Map<String, dynamic> map) {
    return Stats(
      baseStat: map['baseStat'] as int,
      effort: map['effort'] as int,
      stat: Stat.fromMap(map['stat'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory Stats.fromJson(String source) =>
      Stats.fromMap(json.decode(source) as Map<String, dynamic>);
}
