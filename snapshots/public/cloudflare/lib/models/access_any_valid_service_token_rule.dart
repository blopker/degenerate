// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Matches any valid Access Service Token
@immutable final class AccessAnyValidServiceTokenRule {const AccessAnyValidServiceTokenRule({required this.anyValidServiceToken});

factory AccessAnyValidServiceTokenRule.fromJson(Map<String, dynamic> json) { return AccessAnyValidServiceTokenRule(
  anyValidServiceToken: json['any_valid_service_token'] as Map<String, dynamic>,
); }

/// An empty object which matches on all service tokens.
final Map<String,dynamic> anyValidServiceToken;

Map<String, dynamic> toJson() { return {
  'any_valid_service_token': anyValidServiceToken,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('any_valid_service_token'); } 
AccessAnyValidServiceTokenRule copyWith({Map<String,dynamic>? anyValidServiceToken}) { return AccessAnyValidServiceTokenRule(
  anyValidServiceToken: anyValidServiceToken ?? this.anyValidServiceToken,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessAnyValidServiceTokenRule &&
          anyValidServiceToken == other.anyValidServiceToken; } 
@override int get hashCode { return anyValidServiceToken.hashCode; } 
@override String toString() { return 'AccessAnyValidServiceTokenRule(anyValidServiceToken: $anyValidServiceToken)'; } 
 }
