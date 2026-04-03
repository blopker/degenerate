// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'rum_rule_identifier.dart';@immutable final class RumRuleIdResponseSingleResult {const RumRuleIdResponseSingleResult({this.id});

factory RumRuleIdResponseSingleResult.fromJson(Map<String, dynamic> json) { return RumRuleIdResponseSingleResult(
  id: json['id'] != null ? RumRuleIdentifier.fromJson(json['id'] as String) : null,
); }

final RumRuleIdentifier? id;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
RumRuleIdResponseSingleResult copyWith({RumRuleIdentifier Function()? id}) { return RumRuleIdResponseSingleResult(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RumRuleIdResponseSingleResult &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'RumRuleIdResponseSingleResult(id: $id)'; } 
 }
