// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Sort order.
@immutable final class RadarGetBgpRoutesAsnsSortOrder {const RadarGetBgpRoutesAsnsSortOrder._(this.value);

factory RadarGetBgpRoutesAsnsSortOrder.fromJson(String json) { return switch (json) {
  'ASC' => asc,
  'DESC' => desc,
  _ => RadarGetBgpRoutesAsnsSortOrder._(json),
}; }

static const RadarGetBgpRoutesAsnsSortOrder asc = RadarGetBgpRoutesAsnsSortOrder._('ASC');

static const RadarGetBgpRoutesAsnsSortOrder desc = RadarGetBgpRoutesAsnsSortOrder._('DESC');

static const List<RadarGetBgpRoutesAsnsSortOrder> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetBgpRoutesAsnsSortOrder && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetBgpRoutesAsnsSortOrder($value)'; } 
 }
