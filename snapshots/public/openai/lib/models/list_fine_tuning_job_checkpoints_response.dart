// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'fine_tuning_job_checkpoint.dart';@immutable final class ListFineTuningJobCheckpointsResponseObject {const ListFineTuningJobCheckpointsResponseObject._(this.value);

factory ListFineTuningJobCheckpointsResponseObject.fromJson(String json) { return switch (json) {
  'list' => list,
  _ => ListFineTuningJobCheckpointsResponseObject._(json),
}; }

static const ListFineTuningJobCheckpointsResponseObject list = ListFineTuningJobCheckpointsResponseObject._('list');

static const List<ListFineTuningJobCheckpointsResponseObject> values = [list];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ListFineTuningJobCheckpointsResponseObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ListFineTuningJobCheckpointsResponseObject($value)'; } 
 }
@immutable final class ListFineTuningJobCheckpointsResponse {const ListFineTuningJobCheckpointsResponse({required this.data, required this.object, required this.hasMore, this.firstId = const Omittable.absent(), this.lastId = const Omittable.absent(), });

factory ListFineTuningJobCheckpointsResponse.fromJson(Map<String, dynamic> json) { return ListFineTuningJobCheckpointsResponse(
  data: (json['data'] as List<dynamic>).map((e) => FineTuningJobCheckpoint.fromJson(e as Map<String, dynamic>)).toList(),
  object: ListFineTuningJobCheckpointsResponseObject.fromJson(json['object'] as String),
  firstId: json.containsKey('first_id') ? Omittable(json['first_id'] as String?) : const Omittable.absent(),
  lastId: json.containsKey('last_id') ? Omittable(json['last_id'] as String?) : const Omittable.absent(),
  hasMore: json['has_more'] as bool,
); }

final List<FineTuningJobCheckpoint> data;

final ListFineTuningJobCheckpointsResponseObject object;

final Omittable<String?> firstId;

final Omittable<String?> lastId;

final bool hasMore;

Map<String, dynamic> toJson() { return {
  'data': data.map((e) => e.toJson()).toList(),
  'object': object.toJson(),
  if (firstId.isPresent) 'first_id': firstId.value,
  if (lastId.isPresent) 'last_id': lastId.value,
  'has_more': hasMore,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('data') &&
      json.containsKey('object') &&
      json.containsKey('has_more') && json['has_more'] is bool; } 
ListFineTuningJobCheckpointsResponse copyWith({List<FineTuningJobCheckpoint>? data, ListFineTuningJobCheckpointsResponseObject? object, Omittable<String?>? firstId, Omittable<String?>? lastId, bool? hasMore, }) { return ListFineTuningJobCheckpointsResponse(
  data: data ?? this.data,
  object: object ?? this.object,
  firstId: firstId ?? this.firstId,
  lastId: lastId ?? this.lastId,
  hasMore: hasMore ?? this.hasMore,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ListFineTuningJobCheckpointsResponse &&
          listEquals(data, other.data) &&
          object == other.object &&
          firstId == other.firstId &&
          lastId == other.lastId &&
          hasMore == other.hasMore; } 
@override int get hashCode { return Object.hash(Object.hashAll(data), object, firstId, lastId, hasMore); } 
@override String toString() { return 'ListFineTuningJobCheckpointsResponse(data: $data, object: $object, firstId: $firstId, lastId: $lastId, hasMore: $hasMore)'; } 
 }
