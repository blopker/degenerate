// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// * `ML` - Discovered operation was sourced using ML API Discovery * `SessionIdentifier` - Discovered operation was sourced using Session Identifier API Discovery * `LabelDiscovery` - Discovered operation was identified to have a specific label
/// 
@immutable final class DiscoveryOrigin {const DiscoveryOrigin._(this.value);

factory DiscoveryOrigin.fromJson(String json) { return switch (json) {
  'ML' => ml,
  'SessionIdentifier' => sessionIdentifier,
  'LabelDiscovery' => labelDiscovery,
  _ => DiscoveryOrigin._(json),
}; }

static const DiscoveryOrigin ml = DiscoveryOrigin._('ML');

static const DiscoveryOrigin sessionIdentifier = DiscoveryOrigin._('SessionIdentifier');

static const DiscoveryOrigin labelDiscovery = DiscoveryOrigin._('LabelDiscovery');

static const List<DiscoveryOrigin> values = [ml, sessionIdentifier, labelDiscovery];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DiscoveryOrigin && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DiscoveryOrigin($value)'; } 
 }
