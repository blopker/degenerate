// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'connect_embedded_base_features.dart';/// 
@immutable final class ConnectEmbeddedBaseConfigClaim {const ConnectEmbeddedBaseConfigClaim({required this.enabled, required this.features, });

factory ConnectEmbeddedBaseConfigClaim.fromJson(Map<String, dynamic> json) { return ConnectEmbeddedBaseConfigClaim(
  enabled: json['enabled'] as bool,
  features: ConnectEmbeddedBaseFeatures.fromJson(json['features'] as Map<String, dynamic>),
); }

/// Whether the embedded component is enabled.
final bool enabled;

final ConnectEmbeddedBaseFeatures features;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
  'features': features.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool &&
      json.containsKey('features'); } 
ConnectEmbeddedBaseConfigClaim copyWith({bool? enabled, ConnectEmbeddedBaseFeatures? features, }) { return ConnectEmbeddedBaseConfigClaim(
  enabled: enabled ?? this.enabled,
  features: features ?? this.features,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ConnectEmbeddedBaseConfigClaim &&
          enabled == other.enabled &&
          features == other.features; } 
@override int get hashCode { return Object.hash(enabled, features); } 
@override String toString() { return 'ConnectEmbeddedBaseConfigClaim(enabled: $enabled, features: $features)'; } 
 }
