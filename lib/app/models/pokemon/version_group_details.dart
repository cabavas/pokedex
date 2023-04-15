// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'move_learn_method.dart';
import 'version_group.dart';

class VersionGroupDetails {
  int levelLearnedAt;
  MoveLearnMethod moveLearnMethod;
  VersionGroup versionGroup;

  VersionGroupDetails({
    required this.levelLearnedAt,
    required this.moveLearnMethod,
    required this.versionGroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'levelLearnedAt': levelLearnedAt,
      'moveLearnMethod': moveLearnMethod.toMap(),
      'versionGroup': versionGroup.toMap(),
    };
  }

  factory VersionGroupDetails.fromMap(Map<String, dynamic> map) {
    return VersionGroupDetails(
      levelLearnedAt: map['levelLearnedAt'] as int,
      moveLearnMethod: MoveLearnMethod.fromMap(
          map['moveLearnMethod'] as Map<String, dynamic>),
      versionGroup:
          VersionGroup.fromMap(map['versionGroup'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory VersionGroupDetails.fromJson(String source) =>
      VersionGroupDetails.fromMap(json.decode(source) as Map<String, dynamic>);
}
