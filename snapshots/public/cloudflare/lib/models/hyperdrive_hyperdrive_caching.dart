// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'hyperdrive_hyperdrive_caching_common.dart';import 'hyperdrive_hyperdrive_caching_enabled.dart';sealed class HyperdriveHyperdriveCaching {const HyperdriveHyperdriveCaching();

/// Deserialize from JSON, dispatching on the `disabled` discriminator.
factory HyperdriveHyperdriveCaching.fromJson(Map<String, dynamic> json) { return switch (json['disabled']) {
  'false' => HyperdriveHyperdriveCachingFalse.fromJson(json),
  'true' => HyperdriveHyperdriveCachingTrue.fromJson(json),
  _ => HyperdriveHyperdriveCaching$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get disabled;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is HyperdriveHyperdriveCaching$Unknown; } 
 }
@immutable final class HyperdriveHyperdriveCachingFalse extends HyperdriveHyperdriveCaching {const HyperdriveHyperdriveCachingFalse(this.hyperdriveHyperdriveCachingEnabled);

factory HyperdriveHyperdriveCachingFalse.fromJson(Map<String, dynamic> json) { return HyperdriveHyperdriveCachingFalse(HyperdriveHyperdriveCachingEnabled.fromJson(json)); }

final HyperdriveHyperdriveCachingEnabled hyperdriveHyperdriveCachingEnabled;

@override String get disabled { return 'false'; } 
@override Map<String, dynamic> toJson() { return {...hyperdriveHyperdriveCachingEnabled.toJson(), 'disabled': disabled}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is HyperdriveHyperdriveCachingFalse && hyperdriveHyperdriveCachingEnabled == other.hyperdriveHyperdriveCachingEnabled; } 
@override int get hashCode { return hyperdriveHyperdriveCachingEnabled.hashCode; } 
@override String toString() { return 'HyperdriveHyperdriveCachingFalse(hyperdriveHyperdriveCachingEnabled: $hyperdriveHyperdriveCachingEnabled)'; } 
 }
@immutable final class HyperdriveHyperdriveCachingTrue extends HyperdriveHyperdriveCaching {const HyperdriveHyperdriveCachingTrue(this.hyperdriveHyperdriveCachingCommon);

factory HyperdriveHyperdriveCachingTrue.fromJson(Map<String, dynamic> json) { return HyperdriveHyperdriveCachingTrue(HyperdriveHyperdriveCachingCommon.fromJson(json)); }

final HyperdriveHyperdriveCachingCommon hyperdriveHyperdriveCachingCommon;

@override String get disabled { return 'true'; } 
@override Map<String, dynamic> toJson() { return {...hyperdriveHyperdriveCachingCommon.toJson(), 'disabled': disabled}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is HyperdriveHyperdriveCachingTrue && hyperdriveHyperdriveCachingCommon == other.hyperdriveHyperdriveCachingCommon; } 
@override int get hashCode { return hyperdriveHyperdriveCachingCommon.hashCode; } 
@override String toString() { return 'HyperdriveHyperdriveCachingTrue(hyperdriveHyperdriveCachingCommon: $hyperdriveHyperdriveCachingCommon)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
@immutable final class HyperdriveHyperdriveCaching$Unknown extends HyperdriveHyperdriveCaching {const HyperdriveHyperdriveCaching$Unknown(this.json);

final Map<String, dynamic> json;

@override String get disabled { return json['disabled'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is HyperdriveHyperdriveCaching$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'HyperdriveHyperdriveCaching.unknown($json)'; } 
 }
