// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'project.dart';final class ProjectListResponseObject {const ProjectListResponseObject._(this.value);

factory ProjectListResponseObject.fromJson(String json) { return switch (json) {
  'list' => list,
  _ => ProjectListResponseObject._(json),
}; }

static const ProjectListResponseObject list = ProjectListResponseObject._('list');

static const List<ProjectListResponseObject> values = [list];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectListResponseObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ProjectListResponseObject($value)'; } 
 }
final class ProjectListResponse {const ProjectListResponse({required this.object, required this.data, required this.firstId, required this.lastId, required this.hasMore, });

factory ProjectListResponse.fromJson(Map<String, dynamic> json) { return ProjectListResponse(
  object: ProjectListResponseObject.fromJson(json['object'] as String),
  data: (json['data'] as List<dynamic>).map((e) => Project.fromJson(e as Map<String, dynamic>)).toList(),
  firstId: json['first_id'] as String,
  lastId: json['last_id'] as String,
  hasMore: json['has_more'] as bool,
); }

final ProjectListResponseObject object;

final List<Project> data;

final String firstId;

final String lastId;

final bool hasMore;

Map<String, dynamic> toJson() { return {
  'object': object.toJson(),
  'data': data.map((e) => e.toJson()).toList(),
  'first_id': firstId,
  'last_id': lastId,
  'has_more': hasMore,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('object') &&
      json.containsKey('data') &&
      json.containsKey('first_id') && json['first_id'] is String &&
      json.containsKey('last_id') && json['last_id'] is String &&
      json.containsKey('has_more') && json['has_more'] is bool; } 
ProjectListResponse copyWith({ProjectListResponseObject? object, List<Project>? data, String? firstId, String? lastId, bool? hasMore, }) { return ProjectListResponse(
  object: object ?? this.object,
  data: data ?? this.data,
  firstId: firstId ?? this.firstId,
  lastId: lastId ?? this.lastId,
  hasMore: hasMore ?? this.hasMore,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ProjectListResponse &&
          object == other.object &&
          listEquals(data, other.data) &&
          firstId == other.firstId &&
          lastId == other.lastId &&
          hasMore == other.hasMore; } 
@override int get hashCode { return Object.hash(object, Object.hashAll(data), firstId, lastId, hasMore); } 
@override String toString() { return 'ProjectListResponse(object: $object, data: $data, firstId: $firstId, lastId: $lastId, hasMore: $hasMore)'; } 
 }
