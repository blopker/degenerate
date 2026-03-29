// GENERATED CODE - DO NOT MODIFY BY HAND

import 'waf_managed_rules_components_schemas_identifier.dart';import 'waf_managed_rules_name.dart';/// Defines the rule group to which the current WAF rule belongs.
final class WafManagedRulesBaseGroup {const WafManagedRulesBaseGroup({this.id, this.name, });

factory WafManagedRulesBaseGroup.fromJson(Map<String, dynamic> json) { return WafManagedRulesBaseGroup(
  id: json['id'] != null ? WafManagedRulesComponentsSchemasIdentifier.fromJson(json['id'] as String) : null,
  name: json['name'] != null ? WafManagedRulesName.fromJson(json['name'] as String) : null,
); }

final WafManagedRulesComponentsSchemasIdentifier? id;

final WafManagedRulesName? name;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
  if (name != null) 'name': name?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'name'}.contains(key)); } 
WafManagedRulesBaseGroup copyWith({WafManagedRulesComponentsSchemasIdentifier Function()? id, WafManagedRulesName Function()? name, }) { return WafManagedRulesBaseGroup(
  id: id != null ? id() : this.id,
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WafManagedRulesBaseGroup &&
          id == other.id &&
          name == other.name; } 
@override int get hashCode { return Object.hash(id, name); } 
@override String toString() { return 'WafManagedRulesBaseGroup(id: $id, name: $name)'; } 
 }
