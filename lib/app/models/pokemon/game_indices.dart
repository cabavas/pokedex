// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'version.dart';

class GameIndices {
  int gameIndex;
  Version version;

  GameIndices({
    required this.gameIndex,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gameIndex': gameIndex,
      'version': version.toMap(),
    };
  }

  factory GameIndices.fromMap(Map<String, dynamic> map) {
    return GameIndices(
      gameIndex: map['game_index'] as int,
      version: Version.fromMap(map['version'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory GameIndices.fromJson(String source) =>
      GameIndices.fromMap(json.decode(source) as Map<String, dynamic>);
}
