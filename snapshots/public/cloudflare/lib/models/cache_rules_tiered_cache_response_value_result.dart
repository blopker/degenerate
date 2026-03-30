// GENERATED CODE - DO NOT MODIFY BY HAND

/// Value of the Tiered Cache zone setting.
final class CacheRulesTieredCacheValue {const CacheRulesTieredCacheValue._(this.value);

factory CacheRulesTieredCacheValue.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => CacheRulesTieredCacheValue._(json),
}; }

static const CacheRulesTieredCacheValue $on = CacheRulesTieredCacheValue._('on');

static const CacheRulesTieredCacheValue off = CacheRulesTieredCacheValue._('off');

static const List<CacheRulesTieredCacheValue> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CacheRulesTieredCacheValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CacheRulesTieredCacheValue($value)'; } 
 }
final class CacheRulesTieredCacheResponseValueResult {const CacheRulesTieredCacheResponseValueResult({required this.value});

factory CacheRulesTieredCacheResponseValueResult.fromJson(Map<String, dynamic> json) { return CacheRulesTieredCacheResponseValueResult(
  value: CacheRulesTieredCacheValue.fromJson(json['value'] as String),
); }

final CacheRulesTieredCacheValue value;

Map<String, dynamic> toJson() { return {
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('value'); } 
CacheRulesTieredCacheResponseValueResult copyWith({CacheRulesTieredCacheValue? value}) { return CacheRulesTieredCacheResponseValueResult(
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CacheRulesTieredCacheResponseValueResult &&
          value == other.value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CacheRulesTieredCacheResponseValueResult(value: $value)'; } 
 }
