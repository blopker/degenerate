// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetDnsSummaryDnssecAware {const RadarGetDnsSummaryDnssecAware._(this.value);

factory RadarGetDnsSummaryDnssecAware.fromJson(String json) { return switch (json) {
  'SUPPORTED' => supported,
  'NOT_SUPPORTED' => notSupported,
  _ => RadarGetDnsSummaryDnssecAware._(json),
}; }

static const RadarGetDnsSummaryDnssecAware supported = RadarGetDnsSummaryDnssecAware._('SUPPORTED');

static const RadarGetDnsSummaryDnssecAware notSupported = RadarGetDnsSummaryDnssecAware._('NOT_SUPPORTED');

static const List<RadarGetDnsSummaryDnssecAware> values = [supported, notSupported];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsSummaryDnssecAware && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsSummaryDnssecAware($value)'; } 
 }
