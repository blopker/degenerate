// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ListEvalsOrder {const ListEvalsOrder._(this.value);

factory ListEvalsOrder.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  _ => ListEvalsOrder._(json),
}; }

static const ListEvalsOrder asc = ListEvalsOrder._('asc');

static const ListEvalsOrder desc = ListEvalsOrder._('desc');

static const List<ListEvalsOrder> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ListEvalsOrder && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ListEvalsOrder($value)'; } 
 }
