// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ListFilesInVectorStoreBatchOrder {const ListFilesInVectorStoreBatchOrder._(this.value);

factory ListFilesInVectorStoreBatchOrder.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  _ => ListFilesInVectorStoreBatchOrder._(json),
}; }

static const ListFilesInVectorStoreBatchOrder asc = ListFilesInVectorStoreBatchOrder._('asc');

static const ListFilesInVectorStoreBatchOrder desc = ListFilesInVectorStoreBatchOrder._('desc');

static const List<ListFilesInVectorStoreBatchOrder> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ListFilesInVectorStoreBatchOrder && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ListFilesInVectorStoreBatchOrder($value)'; } 
 }
