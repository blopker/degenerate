// GENERATED CODE - DO NOT MODIFY BY HAND

final class AutoragConfigAiSearchRequestFiltersVariant2FiltersType {const AutoragConfigAiSearchRequestFiltersVariant2FiltersType._(this.value);

factory AutoragConfigAiSearchRequestFiltersVariant2FiltersType.fromJson(String json) { return switch (json) {
  'eq' => eq,
  'ne' => ne,
  'gt' => gt,
  'gte' => gte,
  'lt' => lt,
  'lte' => lte,
  _ => AutoragConfigAiSearchRequestFiltersVariant2FiltersType._(json),
}; }

static const AutoragConfigAiSearchRequestFiltersVariant2FiltersType eq = AutoragConfigAiSearchRequestFiltersVariant2FiltersType._('eq');

static const AutoragConfigAiSearchRequestFiltersVariant2FiltersType ne = AutoragConfigAiSearchRequestFiltersVariant2FiltersType._('ne');

static const AutoragConfigAiSearchRequestFiltersVariant2FiltersType gt = AutoragConfigAiSearchRequestFiltersVariant2FiltersType._('gt');

static const AutoragConfigAiSearchRequestFiltersVariant2FiltersType gte = AutoragConfigAiSearchRequestFiltersVariant2FiltersType._('gte');

static const AutoragConfigAiSearchRequestFiltersVariant2FiltersType lt = AutoragConfigAiSearchRequestFiltersVariant2FiltersType._('lt');

static const AutoragConfigAiSearchRequestFiltersVariant2FiltersType lte = AutoragConfigAiSearchRequestFiltersVariant2FiltersType._('lte');

static const List<AutoragConfigAiSearchRequestFiltersVariant2FiltersType> values = [eq, ne, gt, gte, lt, lte];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AutoragConfigAiSearchRequestFiltersVariant2FiltersType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AutoragConfigAiSearchRequestFiltersVariant2FiltersType($value)'; } 
 }
final class AutoragConfigAiSearchRequestFiltersVariant2Filters {const AutoragConfigAiSearchRequestFiltersVariant2Filters({required this.key, required this.type, required this.value, });

factory AutoragConfigAiSearchRequestFiltersVariant2Filters.fromJson(Map<String, dynamic> json) { return AutoragConfigAiSearchRequestFiltersVariant2Filters(
  key: json['key'] as String,
  type: AutoragConfigAiSearchRequestFiltersVariant2FiltersType.fromJson(json['type'] as String),
  value: json['value'],
); }

final String key;

final AutoragConfigAiSearchRequestFiltersVariant2FiltersType type;

/// One of: String, double, bool
final dynamic value;

Map<String, dynamic> toJson() { return {
  'key': key,
  'type': type.toJson(),
  'value': value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('key') && json['key'] is String &&
      json.containsKey('type') &&
      json.containsKey('value'); } 
AutoragConfigAiSearchRequestFiltersVariant2Filters copyWith({String? key, AutoragConfigAiSearchRequestFiltersVariant2FiltersType? type, dynamic value, }) { return AutoragConfigAiSearchRequestFiltersVariant2Filters(
  key: key ?? this.key,
  type: type ?? this.type,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AutoragConfigAiSearchRequestFiltersVariant2Filters &&
          key == other.key &&
          type == other.type &&
          value == other.value; } 
@override int get hashCode { return Object.hash(key, type, value); } 
@override String toString() { return 'AutoragConfigAiSearchRequestFiltersVariant2Filters(key: $key, type: $type, value: $value)'; } 
 }
