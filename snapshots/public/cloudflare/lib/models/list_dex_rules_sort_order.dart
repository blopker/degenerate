// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ListDexRulesSortOrder {const ListDexRulesSortOrder._(this.value);

factory ListDexRulesSortOrder.fromJson(String json) { return switch (json) {
  'ASC' => asc,
  'DESC' => desc,
  _ => ListDexRulesSortOrder._(json),
}; }

static const ListDexRulesSortOrder asc = ListDexRulesSortOrder._('ASC');

static const ListDexRulesSortOrder desc = ListDexRulesSortOrder._('DESC');

static const List<ListDexRulesSortOrder> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ListDexRulesSortOrder && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ListDexRulesSortOrder($value)'; } 
 }
