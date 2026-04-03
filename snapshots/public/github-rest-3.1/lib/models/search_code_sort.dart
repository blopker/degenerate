// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class SearchCodeSort {const SearchCodeSort._(this.value);

factory SearchCodeSort.fromJson(String json) { return switch (json) {
  'indexed' => indexed,
  _ => SearchCodeSort._(json),
}; }

static const SearchCodeSort indexed = SearchCodeSort._('indexed');

static const List<SearchCodeSort> values = [indexed];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SearchCodeSort && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SearchCodeSort($value)'; } 
 }
