// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Sort order of the results. `asc` means oldest to newest, `desc` means newest to oldest. If not set, they will not be in any particular order.
@immutable final class ZeroTrustNetworksSubnetsListSortOrder {const ZeroTrustNetworksSubnetsListSortOrder._(this.value);

factory ZeroTrustNetworksSubnetsListSortOrder.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  _ => ZeroTrustNetworksSubnetsListSortOrder._(json),
}; }

static const ZeroTrustNetworksSubnetsListSortOrder asc = ZeroTrustNetworksSubnetsListSortOrder._('asc');

static const ZeroTrustNetworksSubnetsListSortOrder desc = ZeroTrustNetworksSubnetsListSortOrder._('desc');

static const List<ZeroTrustNetworksSubnetsListSortOrder> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZeroTrustNetworksSubnetsListSortOrder && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZeroTrustNetworksSubnetsListSortOrder($value)'; } 
 }
