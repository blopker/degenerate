// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class IssuesListCommentsForRepoDirection {const IssuesListCommentsForRepoDirection._(this.value);

factory IssuesListCommentsForRepoDirection.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  _ => IssuesListCommentsForRepoDirection._(json),
}; }

static const IssuesListCommentsForRepoDirection asc = IssuesListCommentsForRepoDirection._('asc');

static const IssuesListCommentsForRepoDirection desc = IssuesListCommentsForRepoDirection._('desc');

static const List<IssuesListCommentsForRepoDirection> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesListCommentsForRepoDirection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IssuesListCommentsForRepoDirection($value)'; } 
 }
