// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The type of the reviewer
@immutable final class RepositoryRuleParamsReviewerType {const RepositoryRuleParamsReviewerType._(this.value);

factory RepositoryRuleParamsReviewerType.fromJson(String json) { return switch (json) {
  'Team' => team,
  _ => RepositoryRuleParamsReviewerType._(json),
}; }

static const RepositoryRuleParamsReviewerType team = RepositoryRuleParamsReviewerType._('Team');

static const List<RepositoryRuleParamsReviewerType> values = [team];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleParamsReviewerType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RepositoryRuleParamsReviewerType($value)'; } 
 }
/// A required reviewing team
@immutable final class RepositoryRuleParamsReviewer {const RepositoryRuleParamsReviewer({required this.id, required this.type, });

factory RepositoryRuleParamsReviewer.fromJson(Map<String, dynamic> json) { return RepositoryRuleParamsReviewer(
  id: (json['id'] as num).toInt(),
  type: RepositoryRuleParamsReviewerType.fromJson(json['type'] as String),
); }

/// ID of the reviewer which must review changes to matching files.
final int id;

/// The type of the reviewer
final RepositoryRuleParamsReviewerType type;

Map<String, dynamic> toJson() { return {
  'id': id,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is num &&
      json.containsKey('type'); } 
RepositoryRuleParamsReviewer copyWith({int? id, RepositoryRuleParamsReviewerType? type, }) { return RepositoryRuleParamsReviewer(
  id: id ?? this.id,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryRuleParamsReviewer &&
          id == other.id &&
          type == other.type; } 
@override int get hashCode { return Object.hash(id, type); } 
@override String toString() { return 'RepositoryRuleParamsReviewer(id: $id, type: $type)'; } 
 }
