// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ListDexRulesSortBy {const ListDexRulesSortBy._(this.value);

factory ListDexRulesSortBy.fromJson(String json) { return switch (json) {
  'name' => $name,
  'created_at' => createdAt,
  'updated_at' => updatedAt,
  _ => ListDexRulesSortBy._(json),
}; }

static const ListDexRulesSortBy $name = ListDexRulesSortBy._('name');

static const ListDexRulesSortBy createdAt = ListDexRulesSortBy._('created_at');

static const ListDexRulesSortBy updatedAt = ListDexRulesSortBy._('updated_at');

static const List<ListDexRulesSortBy> values = [$name, createdAt, updatedAt];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ListDexRulesSortBy && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ListDexRulesSortBy($value)'; } 
 }
