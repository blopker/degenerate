// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class IssuesListForAuthenticatedUserSort {const IssuesListForAuthenticatedUserSort._(this.value);

factory IssuesListForAuthenticatedUserSort.fromJson(String json) { return switch (json) {
  'created' => created,
  'updated' => updated,
  'comments' => comments,
  _ => IssuesListForAuthenticatedUserSort._(json),
}; }

static const IssuesListForAuthenticatedUserSort created = IssuesListForAuthenticatedUserSort._('created');

static const IssuesListForAuthenticatedUserSort updated = IssuesListForAuthenticatedUserSort._('updated');

static const IssuesListForAuthenticatedUserSort comments = IssuesListForAuthenticatedUserSort._('comments');

static const List<IssuesListForAuthenticatedUserSort> values = [created, updated, comments];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesListForAuthenticatedUserSort && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IssuesListForAuthenticatedUserSort($value)'; } 
 }
