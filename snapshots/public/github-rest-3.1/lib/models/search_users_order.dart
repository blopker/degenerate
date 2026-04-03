// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class SearchUsersOrder {const SearchUsersOrder._(this.value);

factory SearchUsersOrder.fromJson(String json) { return switch (json) {
  'desc' => desc,
  'asc' => asc,
  _ => SearchUsersOrder._(json),
}; }

static const SearchUsersOrder desc = SearchUsersOrder._('desc');

static const SearchUsersOrder asc = SearchUsersOrder._('asc');

static const List<SearchUsersOrder> values = [desc, asc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SearchUsersOrder && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SearchUsersOrder($value)'; } 
 }
