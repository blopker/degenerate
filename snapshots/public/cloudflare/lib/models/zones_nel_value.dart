// GENERATED CODE - DO NOT MODIFY BY HAND

/// Value of the zone setting.
final class ZonesNelValue {const ZonesNelValue({this.enabled = false});

factory ZonesNelValue.fromJson(Map<String, dynamic> json) { return ZonesNelValue(
  enabled: json.containsKey('enabled') ? json['enabled'] as bool : false,
); }

final bool enabled;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
ZonesNelValue copyWith({bool Function()? enabled}) { return ZonesNelValue(
  enabled: enabled != null ? enabled() : this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesNelValue &&
          enabled == other.enabled; } 
@override int get hashCode { return enabled.hashCode; } 
@override String toString() { return 'ZonesNelValue(enabled: $enabled)'; } 
 }
