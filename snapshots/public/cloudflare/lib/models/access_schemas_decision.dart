// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The action Access will take if a user matches this policy.
@immutable final class AccessSchemasDecision {const AccessSchemasDecision._(this.value);

factory AccessSchemasDecision.fromJson(String json) { return switch (json) {
  'allow' => allow,
  'deny' => deny,
  'non_identity' => nonIdentity,
  'bypass' => bypass,
  _ => AccessSchemasDecision._(json),
}; }

static const AccessSchemasDecision allow = AccessSchemasDecision._('allow');

static const AccessSchemasDecision deny = AccessSchemasDecision._('deny');

static const AccessSchemasDecision nonIdentity = AccessSchemasDecision._('non_identity');

static const AccessSchemasDecision bypass = AccessSchemasDecision._('bypass');

static const List<AccessSchemasDecision> values = [allow, deny, nonIdentity, bypass];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessSchemasDecision && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessSchemasDecision($value)'; } 
 }
