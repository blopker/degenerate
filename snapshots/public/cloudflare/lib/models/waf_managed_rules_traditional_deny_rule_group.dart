// GENERATED CODE - DO NOT MODIFY BY HAND

import 'waf_managed_rules_components_schemas_identifier.dart';import 'waf_managed_rules_name.dart';/// Defines the rule group to which the current WAF rule belongs.
final class WafManagedRulesTraditionalDenyRuleGroup {const WafManagedRulesTraditionalDenyRuleGroup({this.id, this.name, });

factory WafManagedRulesTraditionalDenyRuleGroup.fromJson(Map<String, dynamic> json) { return WafManagedRulesTraditionalDenyRuleGroup(
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
WafManagedRulesTraditionalDenyRuleGroup copyWith({WafManagedRulesComponentsSchemasIdentifier Function()? id, WafManagedRulesName Function()? name, }) { return WafManagedRulesTraditionalDenyRuleGroup(
  id: id != null ? id() : this.id,
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WafManagedRulesTraditionalDenyRuleGroup &&
          id == other.id &&
          name == other.name; } 
@override int get hashCode { return Object.hash(id, name); } 
@override String toString() { return 'WafManagedRulesTraditionalDenyRuleGroup(id: $id, name: $name)'; } 
 }
