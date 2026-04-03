// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetEmailRoutingTimeseriesGroupEncrypted {const RadarGetEmailRoutingTimeseriesGroupEncrypted._(this.value);

factory RadarGetEmailRoutingTimeseriesGroupEncrypted.fromJson(String json) { return switch (json) {
  'ENCRYPTED' => encrypted,
  'NOT_ENCRYPTED' => notEncrypted,
  _ => RadarGetEmailRoutingTimeseriesGroupEncrypted._(json),
}; }

static const RadarGetEmailRoutingTimeseriesGroupEncrypted encrypted = RadarGetEmailRoutingTimeseriesGroupEncrypted._('ENCRYPTED');

static const RadarGetEmailRoutingTimeseriesGroupEncrypted notEncrypted = RadarGetEmailRoutingTimeseriesGroupEncrypted._('NOT_ENCRYPTED');

static const List<RadarGetEmailRoutingTimeseriesGroupEncrypted> values = [encrypted, notEncrypted];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailRoutingTimeseriesGroupEncrypted && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailRoutingTimeseriesGroupEncrypted($value)'; } 
 }
