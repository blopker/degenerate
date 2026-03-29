// GENERATED CODE - DO NOT MODIFY BY HAND

import 'access_linked_app_token_rule_linked_app_token.dart';/// Matches OAuth 2.0 access tokens issued by the specified Access OIDC SaaS application. Only compatible with non_identity and bypass decisions.
final class AccessLinkedAppTokenRule {const AccessLinkedAppTokenRule({required this.linkedAppToken});

factory AccessLinkedAppTokenRule.fromJson(Map<String, dynamic> json) { return AccessLinkedAppTokenRule(
  linkedAppToken: AccessLinkedAppTokenRuleLinkedAppToken.fromJson(json['linked_app_token'] as Map<String, dynamic>),
); }

final AccessLinkedAppTokenRuleLinkedAppToken linkedAppToken;

Map<String, dynamic> toJson() { return {
  'linked_app_token': linkedAppToken.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('linked_app_token'); } 
AccessLinkedAppTokenRule copyWith({AccessLinkedAppTokenRuleLinkedAppToken? linkedAppToken}) { return AccessLinkedAppTokenRule(
  linkedAppToken: linkedAppToken ?? this.linkedAppToken,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessLinkedAppTokenRule &&
          linkedAppToken == other.linkedAppToken; } 
@override int get hashCode { return linkedAppToken.hashCode; } 
@override String toString() { return 'AccessLinkedAppTokenRule(linkedAppToken: $linkedAppToken)'; } 
 }
