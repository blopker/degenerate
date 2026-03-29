// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Type of relationship to create between parent and child events
final class PostCreateEventRelationshipRequestRelationshipType {const PostCreateEventRelationshipRequestRelationshipType._(this.value);

factory PostCreateEventRelationshipRequestRelationshipType.fromJson(String json) { return switch (json) {
  'related_to' => relatedTo,
  'caused_by' => causedBy,
  'attributed_to' => attributedTo,
  _ => PostCreateEventRelationshipRequestRelationshipType._(json),
}; }

static const PostCreateEventRelationshipRequestRelationshipType relatedTo = PostCreateEventRelationshipRequestRelationshipType._('related_to');

static const PostCreateEventRelationshipRequestRelationshipType causedBy = PostCreateEventRelationshipRequestRelationshipType._('caused_by');

static const PostCreateEventRelationshipRequestRelationshipType attributedTo = PostCreateEventRelationshipRequestRelationshipType._('attributed_to');

static const List<PostCreateEventRelationshipRequestRelationshipType> values = [relatedTo, causedBy, attributedTo];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCreateEventRelationshipRequestRelationshipType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCreateEventRelationshipRequestRelationshipType($value)'; } 
 }
final class PostCreateEventRelationshipRequest {const PostCreateEventRelationshipRequest({required this.childIds, required this.datasetId, required this.parentId, required this.relationshipType, });

factory PostCreateEventRelationshipRequest.fromJson(Map<String, dynamic> json) { return PostCreateEventRelationshipRequest(
  childIds: (json['childIds'] as List<dynamic>).map((e) => e as String).toList(),
  datasetId: json['datasetId'] as String,
  parentId: json['parentId'] as String,
  relationshipType: PostCreateEventRelationshipRequestRelationshipType.fromJson(json['relationshipType'] as String),
); }

/// Array of UUIDs for child events. Single child = 1:1 relationship, multiple = 1:many relationships
final List<String> childIds;

/// Dataset identifier where the events are stored
final String datasetId;

/// UUID of the parent event that will be the source of the relationship
final String parentId;

/// Type of relationship to create between parent and child events
final PostCreateEventRelationshipRequestRelationshipType relationshipType;

Map<String, dynamic> toJson() { return {
  'childIds': childIds,
  'datasetId': datasetId,
  'parentId': parentId,
  'relationshipType': relationshipType.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('childIds') &&
      json.containsKey('datasetId') && json['datasetId'] is String &&
      json.containsKey('parentId') && json['parentId'] is String &&
      json.containsKey('relationshipType'); } 
PostCreateEventRelationshipRequest copyWith({List<String>? childIds, String? datasetId, String? parentId, PostCreateEventRelationshipRequestRelationshipType? relationshipType, }) { return PostCreateEventRelationshipRequest(
  childIds: childIds ?? this.childIds,
  datasetId: datasetId ?? this.datasetId,
  parentId: parentId ?? this.parentId,
  relationshipType: relationshipType ?? this.relationshipType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCreateEventRelationshipRequest &&
          listEquals(childIds, other.childIds) &&
          datasetId == other.datasetId &&
          parentId == other.parentId &&
          relationshipType == other.relationshipType; } 
@override int get hashCode { return Object.hash(Object.hashAll(childIds), datasetId, parentId, relationshipType); } 
@override String toString() { return 'PostCreateEventRelationshipRequest(childIds: $childIds, datasetId: $datasetId, parentId: $parentId, relationshipType: $relationshipType)'; } 
 }
