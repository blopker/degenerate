// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// When set to `active`, indicates that the WAF package will be applied to the zone.
@immutable final class FirewallStatus {const FirewallStatus._(this.value);

factory FirewallStatus.fromJson(String json) { return switch (json) {
  'active' => active,
  _ => FirewallStatus._(json),
}; }

static const FirewallStatus active = FirewallStatus._('active');

static const List<FirewallStatus> values = [active];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FirewallStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'FirewallStatus($value)'; } 
 }
