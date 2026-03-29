// GENERATED CODE - DO NOT MODIFY BY HAND

/// Specifies the enablement value of Argo Smart Routing.
final class ArgoConfigSettingValue {const ArgoConfigSettingValue._(this.value);

factory ArgoConfigSettingValue.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => ArgoConfigSettingValue._(json),
}; }

static const ArgoConfigSettingValue $on = ArgoConfigSettingValue._('on');

static const ArgoConfigSettingValue off = ArgoConfigSettingValue._('off');

static const List<ArgoConfigSettingValue> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ArgoConfigSettingValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ArgoConfigSettingValue($value)'; } 
 }
