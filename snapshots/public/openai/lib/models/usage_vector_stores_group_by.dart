// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class UsageVectorStoresGroupBy {const UsageVectorStoresGroupBy._(this.value);

factory UsageVectorStoresGroupBy.fromJson(String json) { return switch (json) {
  'project_id' => projectId,
  _ => UsageVectorStoresGroupBy._(json),
}; }

static const UsageVectorStoresGroupBy projectId = UsageVectorStoresGroupBy._('project_id');

static const List<UsageVectorStoresGroupBy> values = [projectId];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsageVectorStoresGroupBy && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'UsageVectorStoresGroupBy($value)'; } 
 }
