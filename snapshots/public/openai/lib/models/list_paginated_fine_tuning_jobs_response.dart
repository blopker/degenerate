// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'fine_tuning_job.dart';@immutable final class ListPaginatedFineTuningJobsResponseObject {const ListPaginatedFineTuningJobsResponseObject._(this.value);

factory ListPaginatedFineTuningJobsResponseObject.fromJson(String json) { return switch (json) {
  'list' => list,
  _ => ListPaginatedFineTuningJobsResponseObject._(json),
}; }

static const ListPaginatedFineTuningJobsResponseObject list = ListPaginatedFineTuningJobsResponseObject._('list');

static const List<ListPaginatedFineTuningJobsResponseObject> values = [list];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ListPaginatedFineTuningJobsResponseObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ListPaginatedFineTuningJobsResponseObject($value)'; } 
 }
@immutable final class ListPaginatedFineTuningJobsResponse {const ListPaginatedFineTuningJobsResponse({required this.data, required this.hasMore, required this.object, });

factory ListPaginatedFineTuningJobsResponse.fromJson(Map<String, dynamic> json) { return ListPaginatedFineTuningJobsResponse(
  data: (json['data'] as List<dynamic>).map((e) => FineTuningJob.fromJson(e as Map<String, dynamic>)).toList(),
  hasMore: json['has_more'] as bool,
  object: ListPaginatedFineTuningJobsResponseObject.fromJson(json['object'] as String),
); }

final List<FineTuningJob> data;

final bool hasMore;

final ListPaginatedFineTuningJobsResponseObject object;

Map<String, dynamic> toJson() { return {
  'data': data.map((e) => e.toJson()).toList(),
  'has_more': hasMore,
  'object': object.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('data') &&
      json.containsKey('has_more') && json['has_more'] is bool &&
      json.containsKey('object'); } 
ListPaginatedFineTuningJobsResponse copyWith({List<FineTuningJob>? data, bool? hasMore, ListPaginatedFineTuningJobsResponseObject? object, }) { return ListPaginatedFineTuningJobsResponse(
  data: data ?? this.data,
  hasMore: hasMore ?? this.hasMore,
  object: object ?? this.object,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ListPaginatedFineTuningJobsResponse &&
          listEquals(data, other.data) &&
          hasMore == other.hasMore &&
          object == other.object; } 
@override int get hashCode { return Object.hash(Object.hashAll(data), hasMore, object); } 
@override String toString() { return 'ListPaginatedFineTuningJobsResponse(data: $data, hasMore: $hasMore, object: $object)'; } 
 }
