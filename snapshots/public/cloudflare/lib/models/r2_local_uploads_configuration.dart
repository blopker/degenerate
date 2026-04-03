// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Configuration for local uploads on a bucket.
@immutable final class R2LocalUploadsConfiguration {const R2LocalUploadsConfiguration({this.enabled});

factory R2LocalUploadsConfiguration.fromJson(Map<String, dynamic> json) { return R2LocalUploadsConfiguration(
  enabled: json['enabled'] as bool?,
); }

/// Whether local uploads is enabled for this bucket. When enabled, object's data is written to the nearest region first, then asynchronously replicated to the bucket's primary region.
final bool? enabled;

Map<String, dynamic> toJson() { return {
  'enabled': ?enabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enabled'}.contains(key)); } 
R2LocalUploadsConfiguration copyWith({bool Function()? enabled}) { return R2LocalUploadsConfiguration(
  enabled: enabled != null ? enabled() : this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is R2LocalUploadsConfiguration &&
          enabled == other.enabled; } 
@override int get hashCode { return enabled.hashCode; } 
@override String toString() { return 'R2LocalUploadsConfiguration(enabled: $enabled)'; } 
 }
