// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetEmailRoutingSummaryEncrypted {const RadarGetEmailRoutingSummaryEncrypted._(this.value);

factory RadarGetEmailRoutingSummaryEncrypted.fromJson(String json) { return switch (json) {
  'ENCRYPTED' => encrypted,
  'NOT_ENCRYPTED' => notEncrypted,
  _ => RadarGetEmailRoutingSummaryEncrypted._(json),
}; }

static const RadarGetEmailRoutingSummaryEncrypted encrypted = RadarGetEmailRoutingSummaryEncrypted._('ENCRYPTED');

static const RadarGetEmailRoutingSummaryEncrypted notEncrypted = RadarGetEmailRoutingSummaryEncrypted._('NOT_ENCRYPTED');

static const List<RadarGetEmailRoutingSummaryEncrypted> values = [encrypted, notEncrypted];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailRoutingSummaryEncrypted && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailRoutingSummaryEncrypted($value)'; } 
 }
