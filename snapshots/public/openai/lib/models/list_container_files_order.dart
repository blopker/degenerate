// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ListContainerFilesOrder {const ListContainerFilesOrder._(this.value);

factory ListContainerFilesOrder.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  _ => ListContainerFilesOrder._(json),
}; }

static const ListContainerFilesOrder asc = ListContainerFilesOrder._('asc');

static const ListContainerFilesOrder desc = ListContainerFilesOrder._('desc');

static const List<ListContainerFilesOrder> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ListContainerFilesOrder && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ListContainerFilesOrder($value)'; } 
 }
