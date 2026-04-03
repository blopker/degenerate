// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ListWorkersOrder {const ListWorkersOrder._(this.value);

factory ListWorkersOrder.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  _ => ListWorkersOrder._(json),
}; }

static const ListWorkersOrder asc = ListWorkersOrder._('asc');

static const ListWorkersOrder desc = ListWorkersOrder._('desc');

static const List<ListWorkersOrder> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ListWorkersOrder && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ListWorkersOrder($value)'; } 
 }
