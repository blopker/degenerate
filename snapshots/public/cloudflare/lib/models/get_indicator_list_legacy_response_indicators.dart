// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'get_indicator_list_legacy_response_indicators_related_events.dart';import 'get_indicator_list_legacy_response_indicators_tags.dart';@immutable final class GetIndicatorListLegacyResponseIndicators {const GetIndicatorListLegacyResponseIndicators({required this.createdAt, required this.indicatorType, required this.updatedAt, required this.uuid, required this.value, this.datasetId, this.relatedEvents, this.tags, });

factory GetIndicatorListLegacyResponseIndicators.fromJson(Map<String, dynamic> json) { return GetIndicatorListLegacyResponseIndicators(
  createdAt: DateTime.parse(json['createdAt'] as String),
  datasetId: json['datasetId'] as String?,
  indicatorType: json['indicatorType'] as String,
  relatedEvents: (json['relatedEvents'] as List<dynamic>?)?.map((e) => GetIndicatorListLegacyResponseIndicatorsRelatedEvents.fromJson(e as Map<String, dynamic>)).toList(),
  tags: (json['tags'] as List<dynamic>?)?.map((e) => GetIndicatorListLegacyResponseIndicatorsTags.fromJson(e as Map<String, dynamic>)).toList(),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  uuid: json['uuid'] as String,
  value: json['value'] as String,
); }

final DateTime createdAt;

/// The dataset ID this indicator belongs to. Included in list responses.
final String? datasetId;

final String indicatorType;

final List<GetIndicatorListLegacyResponseIndicatorsRelatedEvents>? relatedEvents;

final List<GetIndicatorListLegacyResponseIndicatorsTags>? tags;

final DateTime updatedAt;

final String uuid;

final String value;

Map<String, dynamic> toJson() { return {
  'createdAt': createdAt.toIso8601String(),
  'datasetId': ?datasetId,
  'indicatorType': indicatorType,
  if (relatedEvents != null) 'relatedEvents': relatedEvents?.map((e) => e.toJson()).toList(),
  if (tags != null) 'tags': tags?.map((e) => e.toJson()).toList(),
  'updatedAt': updatedAt.toIso8601String(),
  'uuid': uuid,
  'value': value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('createdAt') && json['createdAt'] is String &&
      json.containsKey('indicatorType') && json['indicatorType'] is String &&
      json.containsKey('updatedAt') && json['updatedAt'] is String &&
      json.containsKey('uuid') && json['uuid'] is String &&
      json.containsKey('value') && json['value'] is String; } 
GetIndicatorListLegacyResponseIndicators copyWith({DateTime? createdAt, String Function()? datasetId, String? indicatorType, List<GetIndicatorListLegacyResponseIndicatorsRelatedEvents> Function()? relatedEvents, List<GetIndicatorListLegacyResponseIndicatorsTags> Function()? tags, DateTime? updatedAt, String? uuid, String? value, }) { return GetIndicatorListLegacyResponseIndicators(
  createdAt: createdAt ?? this.createdAt,
  datasetId: datasetId != null ? datasetId() : this.datasetId,
  indicatorType: indicatorType ?? this.indicatorType,
  relatedEvents: relatedEvents != null ? relatedEvents() : this.relatedEvents,
  tags: tags != null ? tags() : this.tags,
  updatedAt: updatedAt ?? this.updatedAt,
  uuid: uuid ?? this.uuid,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetIndicatorListLegacyResponseIndicators &&
          createdAt == other.createdAt &&
          datasetId == other.datasetId &&
          indicatorType == other.indicatorType &&
          listEquals(relatedEvents, other.relatedEvents) &&
          listEquals(tags, other.tags) &&
          updatedAt == other.updatedAt &&
          uuid == other.uuid &&
          value == other.value; } 
@override int get hashCode { return Object.hash(createdAt, datasetId, indicatorType, Object.hashAll(relatedEvents ?? const []), Object.hashAll(tags ?? const []), updatedAt, uuid, value); } 
@override String toString() { return 'GetIndicatorListLegacyResponseIndicators(createdAt: $createdAt, datasetId: $datasetId, indicatorType: $indicatorType, relatedEvents: $relatedEvents, tags: $tags, updatedAt: $updatedAt, uuid: $uuid, value: $value)'; } 
 }
