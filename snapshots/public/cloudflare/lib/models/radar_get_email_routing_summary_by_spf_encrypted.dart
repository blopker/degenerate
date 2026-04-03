// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetEmailRoutingSummaryBySpfEncrypted {const RadarGetEmailRoutingSummaryBySpfEncrypted._(this.value);

factory RadarGetEmailRoutingSummaryBySpfEncrypted.fromJson(String json) { return switch (json) {
  'ENCRYPTED' => encrypted,
  'NOT_ENCRYPTED' => notEncrypted,
  _ => RadarGetEmailRoutingSummaryBySpfEncrypted._(json),
}; }

static const RadarGetEmailRoutingSummaryBySpfEncrypted encrypted = RadarGetEmailRoutingSummaryBySpfEncrypted._('ENCRYPTED');

static const RadarGetEmailRoutingSummaryBySpfEncrypted notEncrypted = RadarGetEmailRoutingSummaryBySpfEncrypted._('NOT_ENCRYPTED');

static const List<RadarGetEmailRoutingSummaryBySpfEncrypted> values = [encrypted, notEncrypted];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailRoutingSummaryBySpfEncrypted && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailRoutingSummaryBySpfEncrypted($value)'; } 
 }
