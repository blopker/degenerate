// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Field to order zones by.
@immutable final class ZonesGetOrder {const ZonesGetOrder._(this.value);

factory ZonesGetOrder.fromJson(String json) { return switch (json) {
  'name' => $name,
  'status' => status,
  'account.id' => accountId,
  'account.name' => accountName,
  'plan.id' => planId,
  _ => ZonesGetOrder._(json),
}; }

static const ZonesGetOrder $name = ZonesGetOrder._('name');

static const ZonesGetOrder status = ZonesGetOrder._('status');

static const ZonesGetOrder accountId = ZonesGetOrder._('account.id');

static const ZonesGetOrder accountName = ZonesGetOrder._('account.name');

static const ZonesGetOrder planId = ZonesGetOrder._('plan.id');

static const List<ZonesGetOrder> values = [$name, status, accountId, accountName, planId];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesGetOrder && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesGetOrder($value)'; } 
 }
