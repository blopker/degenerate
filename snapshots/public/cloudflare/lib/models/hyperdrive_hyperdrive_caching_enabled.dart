// GENERATED CODE - DO NOT MODIFY BY HAND

final class HyperdriveHyperdriveCachingEnabled {const HyperdriveHyperdriveCachingEnabled({this.disabled, this.maxAge, this.staleWhileRevalidate, });

factory HyperdriveHyperdriveCachingEnabled.fromJson(Map<String, dynamic> json) { return HyperdriveHyperdriveCachingEnabled(
  disabled: json['disabled'] as bool?,
  maxAge: json['max_age'] != null ? (json['max_age'] as num).toInt() : null,
  staleWhileRevalidate: json['stale_while_revalidate'] != null ? (json['stale_while_revalidate'] as num).toInt() : null,
); }

/// Set to true to disable caching of SQL responses. Default is false.
final bool? disabled;

/// Specify the maximum duration (in seconds) items should persist in the cache. Defaults to 60 seconds if not specified.
final int? maxAge;

/// Specify the number of seconds the cache may serve a stale response. Defaults to 15 seconds if not specified.
final int? staleWhileRevalidate;

Map<String, dynamic> toJson() { return {
  'disabled': ?disabled,
  'max_age': ?maxAge,
  'stale_while_revalidate': ?staleWhileRevalidate,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'disabled', 'max_age', 'stale_while_revalidate'}.contains(key)); } 
HyperdriveHyperdriveCachingEnabled copyWith({bool Function()? disabled, int Function()? maxAge, int Function()? staleWhileRevalidate, }) { return HyperdriveHyperdriveCachingEnabled(
  disabled: disabled != null ? disabled() : this.disabled,
  maxAge: maxAge != null ? maxAge() : this.maxAge,
  staleWhileRevalidate: staleWhileRevalidate != null ? staleWhileRevalidate() : this.staleWhileRevalidate,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is HyperdriveHyperdriveCachingEnabled &&
          disabled == other.disabled &&
          maxAge == other.maxAge &&
          staleWhileRevalidate == other.staleWhileRevalidate; } 
@override int get hashCode { return Object.hash(disabled, maxAge, staleWhileRevalidate); } 
@override String toString() { return 'HyperdriveHyperdriveCachingEnabled(disabled: $disabled, maxAge: $maxAge, staleWhileRevalidate: $staleWhileRevalidate)'; } 
 }
