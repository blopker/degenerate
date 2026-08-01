// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class R2DeleteBucketSippyConfigResponseResult {const R2DeleteBucketSippyConfigResponseResult({this.enabled});

factory R2DeleteBucketSippyConfigResponseResult.fromJson(Map<String, dynamic> json) { return R2DeleteBucketSippyConfigResponseResult(
  enabled: json['enabled'] as bool?,
); }

final bool? enabled;

Map<String, dynamic> toJson() { return {
  'enabled': ?enabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enabled'}.contains(key)); } 
R2DeleteBucketSippyConfigResponseResult copyWith({bool? Function()? enabled}) { return R2DeleteBucketSippyConfigResponseResult(
  enabled: enabled != null ? enabled() : this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is R2DeleteBucketSippyConfigResponseResult &&
          enabled == other.enabled; } 
@override int get hashCode { return enabled.hashCode; } 
@override String toString() { return 'R2DeleteBucketSippyConfigResponseResult(enabled: $enabled)'; } 
 }
