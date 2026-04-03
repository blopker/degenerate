// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The actor who updated the ruleset
@immutable final class RulesetVersionWithStateActor {const RulesetVersionWithStateActor({this.id, this.type, });

factory RulesetVersionWithStateActor.fromJson(Map<String, dynamic> json) { return RulesetVersionWithStateActor(
  id: json['id'] != null ? (json['id'] as num).toInt() : null,
  type: json['type'] as String?,
); }

final int? id;

final String? type;

Map<String, dynamic> toJson() { return {
  'id': ?id,
  'type': ?type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'type'}.contains(key)); } 
RulesetVersionWithStateActor copyWith({int Function()? id, String Function()? type, }) { return RulesetVersionWithStateActor(
  id: id != null ? id() : this.id,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RulesetVersionWithStateActor &&
          id == other.id &&
          type == other.type; } 
@override int get hashCode { return Object.hash(id, type); } 
@override String toString() { return 'RulesetVersionWithStateActor(id: $id, type: $type)'; } 
 }
