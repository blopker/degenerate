// GENERATED CODE - DO NOT MODIFY BY HAND

/// Specifies the attribute by which to group the results.
final class RadarGetAttacksLayer7TimeseriesGroupDimension {const RadarGetAttacksLayer7TimeseriesGroupDimension._(this.value);

factory RadarGetAttacksLayer7TimeseriesGroupDimension.fromJson(String json) { return switch (json) {
  'HTTP_METHOD' => httpMethod,
  'HTTP_VERSION' => httpVersion,
  'IP_VERSION' => ipVersion,
  'MANAGED_RULES' => managedRules,
  'MITIGATION_PRODUCT' => mitigationProduct,
  'VERTICAL' => vertical,
  'INDUSTRY' => industry,
  _ => RadarGetAttacksLayer7TimeseriesGroupDimension._(json),
}; }

static const RadarGetAttacksLayer7TimeseriesGroupDimension httpMethod = RadarGetAttacksLayer7TimeseriesGroupDimension._('HTTP_METHOD');

static const RadarGetAttacksLayer7TimeseriesGroupDimension httpVersion = RadarGetAttacksLayer7TimeseriesGroupDimension._('HTTP_VERSION');

static const RadarGetAttacksLayer7TimeseriesGroupDimension ipVersion = RadarGetAttacksLayer7TimeseriesGroupDimension._('IP_VERSION');

static const RadarGetAttacksLayer7TimeseriesGroupDimension managedRules = RadarGetAttacksLayer7TimeseriesGroupDimension._('MANAGED_RULES');

static const RadarGetAttacksLayer7TimeseriesGroupDimension mitigationProduct = RadarGetAttacksLayer7TimeseriesGroupDimension._('MITIGATION_PRODUCT');

static const RadarGetAttacksLayer7TimeseriesGroupDimension vertical = RadarGetAttacksLayer7TimeseriesGroupDimension._('VERTICAL');

static const RadarGetAttacksLayer7TimeseriesGroupDimension industry = RadarGetAttacksLayer7TimeseriesGroupDimension._('INDUSTRY');

static const List<RadarGetAttacksLayer7TimeseriesGroupDimension> values = [httpMethod, httpVersion, ipVersion, managedRules, mitigationProduct, vertical, industry];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer7TimeseriesGroupDimension && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer7TimeseriesGroupDimension($value)'; } 
 }
