// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Sort order.
@immutable final class RadarGetBgpRouteLeakEventsSortOrder {const RadarGetBgpRouteLeakEventsSortOrder._(this.value);

factory RadarGetBgpRouteLeakEventsSortOrder.fromJson(String json) { return switch (json) {
  'ASC' => asc,
  'DESC' => desc,
  _ => RadarGetBgpRouteLeakEventsSortOrder._(json),
}; }

static const RadarGetBgpRouteLeakEventsSortOrder asc = RadarGetBgpRouteLeakEventsSortOrder._('ASC');

static const RadarGetBgpRouteLeakEventsSortOrder desc = RadarGetBgpRouteLeakEventsSortOrder._('DESC');

static const List<RadarGetBgpRouteLeakEventsSortOrder> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetBgpRouteLeakEventsSortOrder && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetBgpRouteLeakEventsSortOrder($value)'; } 
 }
