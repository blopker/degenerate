// GENERATED CODE - DO NOT MODIFY BY HAND

final class HyperdriveHyperdriveCachingCommon {const HyperdriveHyperdriveCachingCommon({this.disabled});

factory HyperdriveHyperdriveCachingCommon.fromJson(Map<String, dynamic> json) { return HyperdriveHyperdriveCachingCommon(
  disabled: json['disabled'] as bool?,
); }

/// Set to true to disable caching of SQL responses. Default is false.
final bool? disabled;

Map<String, dynamic> toJson() { return {
  'disabled': ?disabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'disabled'}.contains(key)); } 
HyperdriveHyperdriveCachingCommon copyWith({bool Function()? disabled}) { return HyperdriveHyperdriveCachingCommon(
  disabled: disabled != null ? disabled() : this.disabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is HyperdriveHyperdriveCachingCommon &&
          disabled == other.disabled; } 
@override int get hashCode { return disabled.hashCode; } 
@override String toString() { return 'HyperdriveHyperdriveCachingCommon(disabled: $disabled)'; } 
 }
