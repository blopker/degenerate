// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_gsuite_group_rule_gsuite.dart';/// Matches a group in Google Workspace.
/// Requires a Google Workspace identity provider.
@immutable final class AccessGsuiteGroupRule {const AccessGsuiteGroupRule({required this.gsuite});

factory AccessGsuiteGroupRule.fromJson(Map<String, dynamic> json) { return AccessGsuiteGroupRule(
  gsuite: AccessGsuiteGroupRuleGsuite.fromJson(json['gsuite'] as Map<String, dynamic>),
); }

final AccessGsuiteGroupRuleGsuite gsuite;

Map<String, dynamic> toJson() { return {
  'gsuite': gsuite.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('gsuite'); } 
AccessGsuiteGroupRule copyWith({AccessGsuiteGroupRuleGsuite? gsuite}) { return AccessGsuiteGroupRule(
  gsuite: gsuite ?? this.gsuite,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessGsuiteGroupRule &&
          gsuite == other.gsuite; } 
@override int get hashCode { return gsuite.hashCode; } 
@override String toString() { return 'AccessGsuiteGroupRule(gsuite: $gsuite)'; } 
 }
