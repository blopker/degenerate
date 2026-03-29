// GENERATED CODE - DO NOT MODIFY BY HAND

import 'connect_embedded_issuing_card_features.dart';/// 
final class ConnectEmbeddedIssuingCardConfigClaim {const ConnectEmbeddedIssuingCardConfigClaim({required this.enabled, required this.features, });

factory ConnectEmbeddedIssuingCardConfigClaim.fromJson(Map<String, dynamic> json) { return ConnectEmbeddedIssuingCardConfigClaim(
  enabled: json['enabled'] as bool,
  features: ConnectEmbeddedIssuingCardFeatures.fromJson(json['features'] as Map<String, dynamic>),
); }

/// Whether the embedded component is enabled.
final bool enabled;

final ConnectEmbeddedIssuingCardFeatures features;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
  'features': features.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool &&
      json.containsKey('features'); } 
ConnectEmbeddedIssuingCardConfigClaim copyWith({bool? enabled, ConnectEmbeddedIssuingCardFeatures? features, }) { return ConnectEmbeddedIssuingCardConfigClaim(
  enabled: enabled ?? this.enabled,
  features: features ?? this.features,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ConnectEmbeddedIssuingCardConfigClaim &&
          enabled == other.enabled &&
          features == other.features; } 
@override int get hashCode { return Object.hash(enabled, features); } 
@override String toString() { return 'ConnectEmbeddedIssuingCardConfigClaim(enabled: $enabled, features: $features)'; } 
 }
