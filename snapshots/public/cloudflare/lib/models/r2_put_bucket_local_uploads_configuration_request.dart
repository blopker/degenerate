// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class R2PutBucketLocalUploadsConfigurationRequest {const R2PutBucketLocalUploadsConfigurationRequest({required this.enabled});

factory R2PutBucketLocalUploadsConfigurationRequest.fromJson(Map<String, dynamic> json) { return R2PutBucketLocalUploadsConfigurationRequest(
  enabled: json['enabled'] as bool,
); }

/// Whether to enable local uploads for this bucket.
final bool enabled;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
R2PutBucketLocalUploadsConfigurationRequest copyWith({bool? enabled}) { return R2PutBucketLocalUploadsConfigurationRequest(
  enabled: enabled ?? this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is R2PutBucketLocalUploadsConfigurationRequest &&
          enabled == other.enabled; } 
@override int get hashCode { return enabled.hashCode; } 
@override String toString() { return 'R2PutBucketLocalUploadsConfigurationRequest(enabled: $enabled)'; } 
 }
