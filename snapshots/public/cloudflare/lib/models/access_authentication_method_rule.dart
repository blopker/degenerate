// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_authentication_method_rule_auth_method.dart';/// Enforce different MFA options
@immutable final class AccessAuthenticationMethodRule {const AccessAuthenticationMethodRule({required this.authMethod});

factory AccessAuthenticationMethodRule.fromJson(Map<String, dynamic> json) { return AccessAuthenticationMethodRule(
  authMethod: AccessAuthenticationMethodRuleAuthMethod.fromJson(json['auth_method'] as Map<String, dynamic>),
); }

final AccessAuthenticationMethodRuleAuthMethod authMethod;

Map<String, dynamic> toJson() { return {
  'auth_method': authMethod.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('auth_method'); } 
AccessAuthenticationMethodRule copyWith({AccessAuthenticationMethodRuleAuthMethod? authMethod}) { return AccessAuthenticationMethodRule(
  authMethod: authMethod ?? this.authMethod,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessAuthenticationMethodRule &&
          authMethod == other.authMethod; } 
@override int get hashCode { return authMethod.hashCode; } 
@override String toString() { return 'AccessAuthenticationMethodRule(authMethod: $authMethod)'; } 
 }
