// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ReposListForAuthenticatedUserSort {const ReposListForAuthenticatedUserSort._(this.value);

factory ReposListForAuthenticatedUserSort.fromJson(String json) { return switch (json) {
  'created' => created,
  'updated' => updated,
  'pushed' => pushed,
  'full_name' => fullName,
  _ => ReposListForAuthenticatedUserSort._(json),
}; }

static const ReposListForAuthenticatedUserSort created = ReposListForAuthenticatedUserSort._('created');

static const ReposListForAuthenticatedUserSort updated = ReposListForAuthenticatedUserSort._('updated');

static const ReposListForAuthenticatedUserSort pushed = ReposListForAuthenticatedUserSort._('pushed');

static const ReposListForAuthenticatedUserSort fullName = ReposListForAuthenticatedUserSort._('full_name');

static const List<ReposListForAuthenticatedUserSort> values = [created, updated, pushed, fullName];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposListForAuthenticatedUserSort && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ReposListForAuthenticatedUserSort($value)'; } 
 }
