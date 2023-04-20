// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'move.dart';
import 'version_group_details.dart';

class Moves {
  Move move;
  VersionGroupDetails versionGroupDetails;

  Moves({
    required this.move,
    required this.versionGroupDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'move': move.toMap(),
      'versionGroupDetails': versionGroupDetails.toMap(),
    };
  }

  factory Moves.fromMap(Map<String, dynamic> map) {
    return Moves(
      move: Move.fromMap(map['move'] as Map<String, dynamic>),
      versionGroupDetails: VersionGroupDetails.fromMap(
          map['version_group_details'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory Moves.fromJson(String source) =>
      Moves.fromMap(json.decode(source) as Map<String, dynamic>);
}
