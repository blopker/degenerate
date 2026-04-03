// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetEmailRoutingSummaryByIpVersionEncrypted {const RadarGetEmailRoutingSummaryByIpVersionEncrypted._(this.value);

factory RadarGetEmailRoutingSummaryByIpVersionEncrypted.fromJson(String json) { return switch (json) {
  'ENCRYPTED' => encrypted,
  'NOT_ENCRYPTED' => notEncrypted,
  _ => RadarGetEmailRoutingSummaryByIpVersionEncrypted._(json),
}; }

static const RadarGetEmailRoutingSummaryByIpVersionEncrypted encrypted = RadarGetEmailRoutingSummaryByIpVersionEncrypted._('ENCRYPTED');

static const RadarGetEmailRoutingSummaryByIpVersionEncrypted notEncrypted = RadarGetEmailRoutingSummaryByIpVersionEncrypted._('NOT_ENCRYPTED');

static const List<RadarGetEmailRoutingSummaryByIpVersionEncrypted> values = [encrypted, notEncrypted];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailRoutingSummaryByIpVersionEncrypted && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailRoutingSummaryByIpVersionEncrypted($value)'; } 
 }
