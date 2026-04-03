// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'waf_managed_rules_components_schemas_identifier.dart';import 'waf_managed_rules_name.dart';/// Defines the rule group to which the current WAF rule belongs.
@immutable final class WafManagedRulesTraditionalAllowRuleGroup {const WafManagedRulesTraditionalAllowRuleGroup({this.id, this.name, });

factory WafManagedRulesTraditionalAllowRuleGroup.fromJson(Map<String, dynamic> json) { return WafManagedRulesTraditionalAllowRuleGroup(
  id: json['id'] != null ? WafManagedRulesComponentsSchemasIdentifier.fromJson(json['id'] as String) : null,
  name: json['name'] != null ? WafManagedRulesName.fromJson(json['name'] as String) : null,
); }

/// Defines the unique identifier of the rule group.
final WafManagedRulesComponentsSchemasIdentifier? id;

/// Defines the name of the rule group.
final WafManagedRulesName? name;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
  if (name != null) 'name': name?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'name'}.contains(key)); } 
WafManagedRulesTraditionalAllowRuleGroup copyWith({WafManagedRulesComponentsSchemasIdentifier Function()? id, WafManagedRulesName Function()? name, }) { return WafManagedRulesTraditionalAllowRuleGroup(
  id: id != null ? id() : this.id,
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WafManagedRulesTraditionalAllowRuleGroup &&
          id == other.id &&
          name == other.name; } 
@override int get hashCode { return Object.hash(id, name); } 
@override String toString() { return 'WafManagedRulesTraditionalAllowRuleGroup(id: $id, name: $name)'; } 
 }
