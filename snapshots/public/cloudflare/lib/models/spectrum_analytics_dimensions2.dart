// GENERATED CODE - DO NOT MODIFY BY HAND

final class SpectrumAnalyticsDimensions2 {const SpectrumAnalyticsDimensions2._(this.value);

factory SpectrumAnalyticsDimensions2.fromJson(String json) { return switch (json) {
  'event' => event,
  'appID' => appId,
  'coloName' => coloName,
  'ipVersion' => ipVersion,
  _ => SpectrumAnalyticsDimensions2._(json),
}; }

static const SpectrumAnalyticsDimensions2 event = SpectrumAnalyticsDimensions2._('event');

static const SpectrumAnalyticsDimensions2 appId = SpectrumAnalyticsDimensions2._('appID');

static const SpectrumAnalyticsDimensions2 coloName = SpectrumAnalyticsDimensions2._('coloName');

static const SpectrumAnalyticsDimensions2 ipVersion = SpectrumAnalyticsDimensions2._('ipVersion');

static const List<SpectrumAnalyticsDimensions2> values = [event, appId, coloName, ipVersion];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SpectrumAnalyticsDimensions2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SpectrumAnalyticsDimensions2($value)'; } 
 }
