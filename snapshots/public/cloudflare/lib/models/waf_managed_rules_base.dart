// GENERATED CODE - DO NOT MODIFY BY HAND

import 'waf_managed_rules_base_group.dart';import 'waf_managed_rules_identifier.dart';/// Defines the order in which the individual WAF rule is executed within its rule group.
extension type const WafManagedRulesPriority(String value) {
factory WafManagedRulesPriority.fromJson(String json) => WafManagedRulesPriority(json);

String toJson() => value;

}
/// Defines the unique identifier of the WAF rule.
extension type const WafManagedRulesRuleComponentsSchemasIdentifier(String value) {
factory WafManagedRulesRuleComponentsSchemasIdentifier.fromJson(String json) => WafManagedRulesRuleComponentsSchemasIdentifier(json);

String toJson() => value;

}
/// Defines the public description of the WAF rule.
extension type const WafManagedRulesSchemasDescription(String value) {
factory WafManagedRulesSchemasDescription.fromJson(String json) => WafManagedRulesSchemasDescription(json);

String toJson() => value;

}
final class WafManagedRulesBase {const WafManagedRulesBase({this.description, this.group, this.id, this.packageId, this.priority, });

factory WafManagedRulesBase.fromJson(Map<String, dynamic> json) { return WafManagedRulesBase(
  description: json['description'] != null ? WafManagedRulesSchemasDescription.fromJson(json['description'] as String) : null,
  group: json['group'] != null ? WafManagedRulesBaseGroup.fromJson(json['group'] as Map<String, dynamic>) : null,
  id: json['id'] != null ? WafManagedRulesRuleComponentsSchemasIdentifier.fromJson(json['id'] as String) : null,
  packageId: json['package_id'] != null ? WafManagedRulesIdentifier.fromJson(json['package_id'] as String) : null,
  priority: json['priority'] != null ? WafManagedRulesPriority.fromJson(json['priority'] as String) : null,
); }

final WafManagedRulesSchemasDescription? description;

/// Defines the rule group to which the current WAF rule belongs.
final WafManagedRulesBaseGroup? group;

final WafManagedRulesRuleComponentsSchemasIdentifier? id;

final WafManagedRulesIdentifier? packageId;

final WafManagedRulesPriority? priority;

Map<String, dynamic> toJson() { return {
  if (description != null) 'description': description?.toJson(),
  if (group != null) 'group': group?.toJson(),
  if (id != null) 'id': id?.toJson(),
  if (packageId != null) 'package_id': packageId?.toJson(),
  if (priority != null) 'priority': priority?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'description', 'group', 'id', 'package_id', 'priority'}.contains(key)); } 
WafManagedRulesBase copyWith({WafManagedRulesSchemasDescription Function()? description, WafManagedRulesBaseGroup Function()? group, WafManagedRulesRuleComponentsSchemasIdentifier Function()? id, WafManagedRulesIdentifier Function()? packageId, WafManagedRulesPriority Function()? priority, }) { return WafManagedRulesBase(
  description: description != null ? description() : this.description,
  group: group != null ? group() : this.group,
  id: id != null ? id() : this.id,
  packageId: packageId != null ? packageId() : this.packageId,
  priority: priority != null ? priority() : this.priority,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WafManagedRulesBase &&
          description == other.description &&
          group == other.group &&
          id == other.id &&
          packageId == other.packageId &&
          priority == other.priority; } 
@override int get hashCode { return Object.hash(description, group, id, packageId, priority); } 
@override String toString() { return 'WafManagedRulesBase(description: $description, group: $group, id: $id, packageId: $packageId, priority: $priority)'; } 
 }
