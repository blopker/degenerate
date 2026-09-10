// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RuleSuiteRuleEvaluationsRuleSource {const RuleSuiteRuleEvaluationsRuleSource({this.type, this.id = const Omittable.absent(), this.name = const Omittable.absent(), });

factory RuleSuiteRuleEvaluationsRuleSource.fromJson(Map<String, dynamic> json) { return RuleSuiteRuleEvaluationsRuleSource(
  type: json['type'] as String?,
  id: json.containsKey('id') ? Omittable(json['id'] != null ? (json['id'] as num).toInt() : null) : const Omittable.absent(),
  name: json.containsKey('name') ? Omittable(json['name'] as String?) : const Omittable.absent(),
); }

/// The type of rule source.
final String? type;

/// The ID of the rule source.
final Omittable<int?> id;

/// The name of the rule source.
final Omittable<String?> name;

Map<String, dynamic> toJson() { return {
  'type': ?type,
  if (id.isPresent) 'id': id.value,
  if (name.isPresent) 'name': name.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'type', 'id', 'name'}.contains(key)); } 
RuleSuiteRuleEvaluationsRuleSource copyWith({String? Function()? type, Omittable<int?>? id, Omittable<String?>? name, }) { return RuleSuiteRuleEvaluationsRuleSource(
  type: type != null ? type() : this.type,
  id: id ?? this.id,
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RuleSuiteRuleEvaluationsRuleSource &&
          type == other.type &&
          id == other.id &&
          name == other.name; } 
@override int get hashCode { return Object.hash(type, id, name); } 
@override String toString() { return 'RuleSuiteRuleEvaluationsRuleSource(type: $type, id: $id, name: $name)'; } 
 }
