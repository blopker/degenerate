// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'r2_sippy_destination.dart';import 'r2_sippy_source.dart';@immutable final class R2Sippy {const R2Sippy({this.destination, this.enabled, this.source, });

factory R2Sippy.fromJson(Map<String, dynamic> json) { return R2Sippy(
  destination: json['destination'] != null ? R2SippyDestination.fromJson(json['destination'] as Map<String, dynamic>) : null,
  enabled: json['enabled'] as bool?,
  source: json['source'] != null ? R2SippySource.fromJson(json['source'] as Map<String, dynamic>) : null,
); }

/// Details about the configured destination bucket.
final R2SippyDestination? destination;

/// State of Sippy for this bucket.
final bool? enabled;

/// Details about the configured source bucket.
final R2SippySource? source;

Map<String, dynamic> toJson() { return {
  if (destination != null) 'destination': destination?.toJson(),
  'enabled': ?enabled,
  if (source != null) 'source': source?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'destination', 'enabled', 'source'}.contains(key)); } 
R2Sippy copyWith({R2SippyDestination Function()? destination, bool Function()? enabled, R2SippySource Function()? source, }) { return R2Sippy(
  destination: destination != null ? destination() : this.destination,
  enabled: enabled != null ? enabled() : this.enabled,
  source: source != null ? source() : this.source,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is R2Sippy &&
          destination == other.destination &&
          enabled == other.enabled &&
          source == other.source; } 
@override int get hashCode { return Object.hash(destination, enabled, source); } 
@override String toString() { return 'R2Sippy(destination: $destination, enabled: $enabled, source: $source)'; } 
 }
