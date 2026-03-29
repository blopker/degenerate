// GENERATED CODE - DO NOT MODIFY BY HAND

import 'magic_cidr.dart';final class MagicNat {const MagicNat({this.staticPrefix});

factory MagicNat.fromJson(Map<String, dynamic> json) { return MagicNat(
  staticPrefix: json['static_prefix'] != null ? MagicCidr.fromJson(json['static_prefix'] as String) : null,
); }

/// A valid CIDR notation representing an IP range.
final MagicCidr? staticPrefix;

Map<String, dynamic> toJson() { return {
  if (staticPrefix != null) 'static_prefix': staticPrefix?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
MagicNat copyWith({MagicCidr Function()? staticPrefix}) { return MagicNat(
  staticPrefix: staticPrefix != null ? staticPrefix() : this.staticPrefix,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicNat &&
          staticPrefix == other.staticPrefix; } 
@override int get hashCode { return staticPrefix.hashCode; } 
@override String toString() { return 'MagicNat(staticPrefix: $staticPrefix)'; } 
 }
