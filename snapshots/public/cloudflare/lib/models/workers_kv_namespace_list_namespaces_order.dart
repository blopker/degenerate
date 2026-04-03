// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Field to order results by.
@immutable final class WorkersKvNamespaceListNamespacesOrder {const WorkersKvNamespaceListNamespacesOrder._(this.value);

factory WorkersKvNamespaceListNamespacesOrder.fromJson(String json) { return switch (json) {
  'id' => id,
  'title' => title,
  _ => WorkersKvNamespaceListNamespacesOrder._(json),
}; }

static const WorkersKvNamespaceListNamespacesOrder id = WorkersKvNamespaceListNamespacesOrder._('id');

static const WorkersKvNamespaceListNamespacesOrder title = WorkersKvNamespaceListNamespacesOrder._('title');

static const List<WorkersKvNamespaceListNamespacesOrder> values = [id, title];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersKvNamespaceListNamespacesOrder && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WorkersKvNamespaceListNamespacesOrder($value)'; } 
 }
