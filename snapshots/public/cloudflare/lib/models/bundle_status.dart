// GENERATED CODE - DO NOT MODIFY BY HAND

/// Defines the overall status for Leaked Credential Checks.
final class BundleStatus {const BundleStatus({this.enabled});

factory BundleStatus.fromJson(Map<String, dynamic> json) { return BundleStatus(
  enabled: json['enabled'] as bool?,
); }

/// Determines whether or not Leaked Credential Checks are enabled.
final bool? enabled;

Map<String, dynamic> toJson() { return {
  'enabled': ?enabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enabled'}.contains(key)); } 
BundleStatus copyWith({bool Function()? enabled}) { return BundleStatus(
  enabled: enabled != null ? enabled() : this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BundleStatus &&
          enabled == other.enabled; } 
@override int get hashCode { return enabled.hashCode; } 
@override String toString() { return 'BundleStatus(enabled: $enabled)'; } 
 }
