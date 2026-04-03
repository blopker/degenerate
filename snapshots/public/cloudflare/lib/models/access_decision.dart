// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The action Access will take if a user matches this policy. Infrastructure application policies can only use the Allow action.
@immutable final class AccessDecision {const AccessDecision._(this.value);

factory AccessDecision.fromJson(String json) { return switch (json) {
  'allow' => allow,
  'deny' => deny,
  'non_identity' => nonIdentity,
  'bypass' => bypass,
  _ => AccessDecision._(json),
}; }

static const AccessDecision allow = AccessDecision._('allow');

static const AccessDecision deny = AccessDecision._('deny');

static const AccessDecision nonIdentity = AccessDecision._('non_identity');

static const AccessDecision bypass = AccessDecision._('bypass');

static const List<AccessDecision> values = [allow, deny, nonIdentity, bypass];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessDecision && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessDecision($value)'; } 
 }
