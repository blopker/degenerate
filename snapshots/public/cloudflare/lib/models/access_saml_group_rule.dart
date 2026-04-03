// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_saml_group_rule_saml.dart';/// Matches a SAML group.
/// Requires a SAML identity provider.
@immutable final class AccessSamlGroupRule {const AccessSamlGroupRule({required this.saml});

factory AccessSamlGroupRule.fromJson(Map<String, dynamic> json) { return AccessSamlGroupRule(
  saml: AccessSamlGroupRuleSaml.fromJson(json['saml'] as Map<String, dynamic>),
); }

final AccessSamlGroupRuleSaml saml;

Map<String, dynamic> toJson() { return {
  'saml': saml.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('saml'); } 
AccessSamlGroupRule copyWith({AccessSamlGroupRuleSaml? saml}) { return AccessSamlGroupRule(
  saml: saml ?? this.saml,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSamlGroupRule &&
          saml == other.saml; } 
@override int get hashCode { return saml.hashCode; } 
@override String toString() { return 'AccessSamlGroupRule(saml: $saml)'; } 
 }
