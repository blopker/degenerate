// GENERATED CODE - DO NOT MODIFY BY HAND

/// Value of the Smart Tiered Cache zone setting.
final class CacheRulesSmartTieredCacheValue {const CacheRulesSmartTieredCacheValue._(this.value);

factory CacheRulesSmartTieredCacheValue.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => CacheRulesSmartTieredCacheValue._(json),
}; }

static const CacheRulesSmartTieredCacheValue $on = CacheRulesSmartTieredCacheValue._('on');

static const CacheRulesSmartTieredCacheValue off = CacheRulesSmartTieredCacheValue._('off');

static const List<CacheRulesSmartTieredCacheValue> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CacheRulesSmartTieredCacheValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CacheRulesSmartTieredCacheValue($value)'; } 
 }
final class CacheRulesSmartTieredCacheResponseValueResult {const CacheRulesSmartTieredCacheResponseValueResult({required this.value});

factory CacheRulesSmartTieredCacheResponseValueResult.fromJson(Map<String, dynamic> json) { return CacheRulesSmartTieredCacheResponseValueResult(
  value: CacheRulesSmartTieredCacheValue.fromJson(json['value'] as String),
); }

final CacheRulesSmartTieredCacheValue value;

Map<String, dynamic> toJson() { return {
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('value'); } 
CacheRulesSmartTieredCacheResponseValueResult copyWith({CacheRulesSmartTieredCacheValue? value}) { return CacheRulesSmartTieredCacheResponseValueResult(
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CacheRulesSmartTieredCacheResponseValueResult &&
          value == other.value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CacheRulesSmartTieredCacheResponseValueResult(value: $value)'; } 
 }
