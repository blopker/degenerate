// GENERATED CODE - DO NOT MODIFY BY HAND

/// Filters results by event type.
final class RadarGetAnnotationsEventType {const RadarGetAnnotationsEventType._(this.value);

factory RadarGetAnnotationsEventType.fromJson(String json) { return switch (json) {
  'EVENT' => event,
  'GENERAL' => general,
  'OUTAGE' => outage,
  'PARTIAL_PROJECTION' => partialProjection,
  'PIPELINE' => pipeline,
  'TRAFFIC_ANOMALY' => trafficAnomaly,
  _ => RadarGetAnnotationsEventType._(json),
}; }

static const RadarGetAnnotationsEventType event = RadarGetAnnotationsEventType._('EVENT');

static const RadarGetAnnotationsEventType general = RadarGetAnnotationsEventType._('GENERAL');

static const RadarGetAnnotationsEventType outage = RadarGetAnnotationsEventType._('OUTAGE');

static const RadarGetAnnotationsEventType partialProjection = RadarGetAnnotationsEventType._('PARTIAL_PROJECTION');

static const RadarGetAnnotationsEventType pipeline = RadarGetAnnotationsEventType._('PIPELINE');

static const RadarGetAnnotationsEventType trafficAnomaly = RadarGetAnnotationsEventType._('TRAFFIC_ANOMALY');

static const List<RadarGetAnnotationsEventType> values = [event, general, outage, partialProjection, pipeline, trafficAnomaly];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAnnotationsEventType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAnnotationsEventType($value)'; } 
 }
