// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'autorag_config_search_request_filters_variant2_filters.dart';final class AutoragConfigSearchRequestFiltersVariant2Type {const AutoragConfigSearchRequestFiltersVariant2Type._(this.value);

factory AutoragConfigSearchRequestFiltersVariant2Type.fromJson(String json) { return switch (json) {
  'and' => and,
  'or' => or,
  _ => AutoragConfigSearchRequestFiltersVariant2Type._(json),
}; }

static const AutoragConfigSearchRequestFiltersVariant2Type and = AutoragConfigSearchRequestFiltersVariant2Type._('and');

static const AutoragConfigSearchRequestFiltersVariant2Type or = AutoragConfigSearchRequestFiltersVariant2Type._('or');

static const List<AutoragConfigSearchRequestFiltersVariant2Type> values = [and, or];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AutoragConfigSearchRequestFiltersVariant2Type && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AutoragConfigSearchRequestFiltersVariant2Type($value)'; } 
 }
final class AutoragConfigSearchRequestFiltersVariant2 {const AutoragConfigSearchRequestFiltersVariant2({required this.filters, required this.type, });

factory AutoragConfigSearchRequestFiltersVariant2.fromJson(Map<String, dynamic> json) { return AutoragConfigSearchRequestFiltersVariant2(
  filters: (json['filters'] as List<dynamic>).map((e) => AutoragConfigSearchRequestFiltersVariant2Filters.fromJson(e as Map<String, dynamic>)).toList(),
  type: AutoragConfigSearchRequestFiltersVariant2Type.fromJson(json['type'] as String),
); }

final List<AutoragConfigSearchRequestFiltersVariant2Filters> filters;

final AutoragConfigSearchRequestFiltersVariant2Type type;

Map<String, dynamic> toJson() { return {
  'filters': filters.map((e) => e.toJson()).toList(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('filters') &&
      json.containsKey('type'); } 
AutoragConfigSearchRequestFiltersVariant2 copyWith({List<AutoragConfigSearchRequestFiltersVariant2Filters>? filters, AutoragConfigSearchRequestFiltersVariant2Type? type, }) { return AutoragConfigSearchRequestFiltersVariant2(
  filters: filters ?? this.filters,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AutoragConfigSearchRequestFiltersVariant2 &&
          listEquals(filters, other.filters) &&
          type == other.type; } 
@override int get hashCode { return Object.hash(Object.hashAll(filters), type); } 
@override String toString() { return 'AutoragConfigSearchRequestFiltersVariant2(filters: $filters, type: $type)'; } 
 }
