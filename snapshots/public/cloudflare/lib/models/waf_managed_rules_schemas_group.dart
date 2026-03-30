// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'waf_managed_rules_components_schemas_identifier.dart';import 'waf_managed_rules_description.dart';import 'waf_managed_rules_identifier.dart';import 'waf_managed_rules_mode.dart';import 'waf_managed_rules_modified_rules_count.dart';import 'waf_managed_rules_name.dart';import 'waf_managed_rules_rules_count.dart';final class WafManagedRulesSchemasGroup {const WafManagedRulesSchemasGroup({required this.description, required this.id, this.modifiedRulesCount, required this.name, this.packageId, required this.rulesCount, this.allowedModes, required this.mode, });

factory WafManagedRulesSchemasGroup.fromJson(Map<String, dynamic> json) { return WafManagedRulesSchemasGroup(
  description: json['description'] != null ? WafManagedRulesDescription.fromJson(json['description'] as String) : null,
  id: WafManagedRulesComponentsSchemasIdentifier.fromJson(json['id'] as String),
  modifiedRulesCount: json['modified_rules_count'] != null ? WafManagedRulesModifiedRulesCount.fromJson(json['modified_rules_count'] as num) : null,
  name: WafManagedRulesName.fromJson(json['name'] as String),
  packageId: json['package_id'] != null ? WafManagedRulesIdentifier.fromJson(json['package_id'] as String) : null,
  rulesCount: WafManagedRulesRulesCount.fromJson(json['rules_count'] as num),
  allowedModes: (json['allowed_modes'] as List<dynamic>?)?.map((e) => WafManagedRulesMode.fromJson(e as String)).toList(),
  mode: WafManagedRulesMode.fromJson(json['mode'] as String),
); }

/// Defines an informative summary of what the rule group does.
final WafManagedRulesDescription? description;

/// Defines the unique identifier of the rule group.
final WafManagedRulesComponentsSchemasIdentifier id;

/// Defines the number of rules within the group that have been modified from their default configuration.
final WafManagedRulesModifiedRulesCount? modifiedRulesCount;

/// Defines the name of the rule group.
final WafManagedRulesName name;

/// Defines the unique identifier of a WAF package.
final WafManagedRulesIdentifier? packageId;

/// Defines the number of rules in the current rule group.
final WafManagedRulesRulesCount rulesCount;

/// Defines the available states for the rule group.
final List<WafManagedRulesMode>? allowedModes;

/// Defines the state of the rules contained in the rule group. When `on`, the rules in the group are configurable/usable.
final WafManagedRulesMode mode;

Map<String, dynamic> toJson() { return {
  if (description != null) 'description': description?.toJson(),
  'id': id.toJson(),
  if (modifiedRulesCount != null) 'modified_rules_count': modifiedRulesCount?.toJson(),
  'name': name.toJson(),
  if (packageId != null) 'package_id': packageId?.toJson(),
  'rules_count': rulesCount.toJson(),
  if (allowedModes != null) 'allowed_modes': allowedModes?.map((e) => e.toJson()).toList(),
  'mode': mode.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('description') &&
      json.containsKey('id') &&
      json.containsKey('name') &&
      json.containsKey('rules_count') &&
      json.containsKey('mode'); } 
WafManagedRulesSchemasGroup copyWith({WafManagedRulesDescription? Function()? description, WafManagedRulesComponentsSchemasIdentifier? id, WafManagedRulesModifiedRulesCount Function()? modifiedRulesCount, WafManagedRulesName? name, WafManagedRulesIdentifier Function()? packageId, WafManagedRulesRulesCount? rulesCount, List<WafManagedRulesMode> Function()? allowedModes, WafManagedRulesMode? mode, }) { return WafManagedRulesSchemasGroup(
  description: description != null ? description() : this.description,
  id: id ?? this.id,
  modifiedRulesCount: modifiedRulesCount != null ? modifiedRulesCount() : this.modifiedRulesCount,
  name: name ?? this.name,
  packageId: packageId != null ? packageId() : this.packageId,
  rulesCount: rulesCount ?? this.rulesCount,
  allowedModes: allowedModes != null ? allowedModes() : this.allowedModes,
  mode: mode ?? this.mode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WafManagedRulesSchemasGroup &&
          description == other.description &&
          id == other.id &&
          modifiedRulesCount == other.modifiedRulesCount &&
          name == other.name &&
          packageId == other.packageId &&
          rulesCount == other.rulesCount &&
          listEquals(allowedModes, other.allowedModes) &&
          mode == other.mode; } 
@override int get hashCode { return Object.hash(description, id, modifiedRulesCount, name, packageId, rulesCount, Object.hashAll(allowedModes ?? const []), mode); } 
@override String toString() { return 'WafManagedRulesSchemasGroup(description: $description, id: $id, modifiedRulesCount: $modifiedRulesCount, name: $name, packageId: $packageId, rulesCount: $rulesCount, allowedModes: $allowedModes, mode: $mode)'; } 
 }
