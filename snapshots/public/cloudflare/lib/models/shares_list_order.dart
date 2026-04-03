// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class SharesListOrder {const SharesListOrder._(this.value);

factory SharesListOrder.fromJson(String json) { return switch (json) {
  'name' => $name,
  'created' => created,
  _ => SharesListOrder._(json),
}; }

static const SharesListOrder $name = SharesListOrder._('name');

static const SharesListOrder created = SharesListOrder._('created');

static const List<SharesListOrder> values = [$name, created];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SharesListOrder && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SharesListOrder($value)'; } 
 }
