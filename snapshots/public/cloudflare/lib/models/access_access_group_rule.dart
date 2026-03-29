// GENERATED CODE - DO NOT MODIFY BY HAND

import 'access_access_group_rule_group.dart';/// Matches an Access group.
final class AccessAccessGroupRule {const AccessAccessGroupRule({required this.group});

factory AccessAccessGroupRule.fromJson(Map<String, dynamic> json) { return AccessAccessGroupRule(
  group: AccessAccessGroupRuleGroup.fromJson(json['group'] as Map<String, dynamic>),
); }

final AccessAccessGroupRuleGroup group;

Map<String, dynamic> toJson() { return {
  'group': group.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('group'); } 
AccessAccessGroupRule copyWith({AccessAccessGroupRuleGroup? group}) { return AccessAccessGroupRule(
  group: group ?? this.group,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessAccessGroupRule &&
          group == other.group; } 
@override int get hashCode { return group.hashCode; } 
@override String toString() { return 'AccessAccessGroupRule(group: $group)'; } 
 }
