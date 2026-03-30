// GENERATED CODE - DO NOT MODIFY BY HAND

final class BranchProtectionBlockCreations {const BranchProtectionBlockCreations({this.enabled});

factory BranchProtectionBlockCreations.fromJson(Map<String, dynamic> json) { return BranchProtectionBlockCreations(
  enabled: json['enabled'] as bool?,
); }

final bool? enabled;

Map<String, dynamic> toJson() { return {
  'enabled': ?enabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enabled'}.contains(key)); } 
BranchProtectionBlockCreations copyWith({bool Function()? enabled}) { return BranchProtectionBlockCreations(
  enabled: enabled != null ? enabled() : this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BranchProtectionBlockCreations &&
          enabled == other.enabled; } 
@override int get hashCode { return enabled.hashCode; } 
@override String toString() { return 'BranchProtectionBlockCreations(enabled: $enabled)'; } 
 }
