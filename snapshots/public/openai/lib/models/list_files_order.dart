// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ListFilesOrder {const ListFilesOrder._(this.value);

factory ListFilesOrder.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  _ => ListFilesOrder._(json),
}; }

static const ListFilesOrder asc = ListFilesOrder._('asc');

static const ListFilesOrder desc = ListFilesOrder._('desc');

static const List<ListFilesOrder> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ListFilesOrder && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ListFilesOrder($value)'; } 
 }
