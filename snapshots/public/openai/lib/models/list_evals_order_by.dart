// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ListEvalsOrderBy {const ListEvalsOrderBy._(this.value);

factory ListEvalsOrderBy.fromJson(String json) { return switch (json) {
  'created_at' => createdAt,
  'updated_at' => updatedAt,
  _ => ListEvalsOrderBy._(json),
}; }

static const ListEvalsOrderBy createdAt = ListEvalsOrderBy._('created_at');

static const ListEvalsOrderBy updatedAt = ListEvalsOrderBy._('updated_at');

static const List<ListEvalsOrderBy> values = [createdAt, updatedAt];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ListEvalsOrderBy && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ListEvalsOrderBy($value)'; } 
 }
