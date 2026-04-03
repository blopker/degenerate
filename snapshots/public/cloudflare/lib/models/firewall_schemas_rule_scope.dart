// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'firewall_identifier.dart';/// The contact email address of the user.
extension type const FirewallEmail(String value) {
factory FirewallEmail.fromJson(String json) => FirewallEmail(json);

String toJson() => value;

}
/// Defines the scope of the rule.
@immutable final class FirewallSchemasRuleScopeType {const FirewallSchemasRuleScopeType._(this.value);

factory FirewallSchemasRuleScopeType.fromJson(String json) { return switch (json) {
  'user' => user,
  'organization' => organization,
  _ => FirewallSchemasRuleScopeType._(json),
}; }

static const FirewallSchemasRuleScopeType user = FirewallSchemasRuleScopeType._('user');

static const FirewallSchemasRuleScopeType organization = FirewallSchemasRuleScopeType._('organization');

static const List<FirewallSchemasRuleScopeType> values = [user, organization];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FirewallSchemasRuleScopeType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'FirewallSchemasRuleScopeType($value)'; } 
 }
/// All zones owned by the user will have the rule applied.
@immutable final class FirewallSchemasRuleScope {const FirewallSchemasRuleScope({this.email, this.id, this.type, });

factory FirewallSchemasRuleScope.fromJson(Map<String, dynamic> json) { return FirewallSchemasRuleScope(
  email: json['email'] != null ? FirewallEmail.fromJson(json['email'] as String) : null,
  id: json['id'] != null ? FirewallIdentifier.fromJson(json['id'] as String) : null,
  type: json['type'] != null ? FirewallSchemasRuleScopeType.fromJson(json['type'] as String) : null,
); }

/// The contact email address of the user.
final FirewallEmail? email;

/// Defines an identifier.
final FirewallIdentifier? id;

/// Defines the scope of the rule.
final FirewallSchemasRuleScopeType? type;

Map<String, dynamic> toJson() { return {
  if (email != null) 'email': email?.toJson(),
  if (id != null) 'id': id?.toJson(),
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'email', 'id', 'type'}.contains(key)); } 
FirewallSchemasRuleScope copyWith({FirewallEmail Function()? email, FirewallIdentifier Function()? id, FirewallSchemasRuleScopeType Function()? type, }) { return FirewallSchemasRuleScope(
  email: email != null ? email() : this.email,
  id: id != null ? id() : this.id,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FirewallSchemasRuleScope &&
          email == other.email &&
          id == other.id &&
          type == other.type; } 
@override int get hashCode { return Object.hash(email, id, type); } 
@override String toString() { return 'FirewallSchemasRuleScope(email: $email, id: $id, type: $type)'; } 
 }
