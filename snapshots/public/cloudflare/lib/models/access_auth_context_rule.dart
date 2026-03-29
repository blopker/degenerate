// GENERATED CODE - DO NOT MODIFY BY HAND

import 'access_auth_context_rule_auth_context.dart';/// Matches an Azure Authentication Context.
/// Requires an Azure identity provider.
final class AccessAuthContextRule {const AccessAuthContextRule({required this.authContext});

factory AccessAuthContextRule.fromJson(Map<String, dynamic> json) { return AccessAuthContextRule(
  authContext: AccessAuthContextRuleAuthContext.fromJson(json['auth_context'] as Map<String, dynamic>),
); }

final AccessAuthContextRuleAuthContext authContext;

Map<String, dynamic> toJson() { return {
  'auth_context': authContext.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('auth_context'); } 
AccessAuthContextRule copyWith({AccessAuthContextRuleAuthContext? authContext}) { return AccessAuthContextRule(
  authContext: authContext ?? this.authContext,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessAuthContextRule &&
          authContext == other.authContext; } 
@override int get hashCode { return authContext.hashCode; } 
@override String toString() { return 'AccessAuthContextRule(authContext: $authContext)'; } 
 }
