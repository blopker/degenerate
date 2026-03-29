// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetAttacksLayer7TimeseriesGroupByIpVersionMitigationProduct {const RadarGetAttacksLayer7TimeseriesGroupByIpVersionMitigationProduct._(this.value);

factory RadarGetAttacksLayer7TimeseriesGroupByIpVersionMitigationProduct.fromJson(String json) { return switch (json) {
  'DDOS' => ddos,
  'WAF' => waf,
  'BOT_MANAGEMENT' => botManagement,
  'ACCESS_RULES' => accessRules,
  'IP_REPUTATION' => ipReputation,
  'API_SHIELD' => apiShield,
  'DATA_LOSS_PREVENTION' => dataLossPrevention,
  _ => RadarGetAttacksLayer7TimeseriesGroupByIpVersionMitigationProduct._(json),
}; }

static const RadarGetAttacksLayer7TimeseriesGroupByIpVersionMitigationProduct ddos = RadarGetAttacksLayer7TimeseriesGroupByIpVersionMitigationProduct._('DDOS');

static const RadarGetAttacksLayer7TimeseriesGroupByIpVersionMitigationProduct waf = RadarGetAttacksLayer7TimeseriesGroupByIpVersionMitigationProduct._('WAF');

static const RadarGetAttacksLayer7TimeseriesGroupByIpVersionMitigationProduct botManagement = RadarGetAttacksLayer7TimeseriesGroupByIpVersionMitigationProduct._('BOT_MANAGEMENT');

static const RadarGetAttacksLayer7TimeseriesGroupByIpVersionMitigationProduct accessRules = RadarGetAttacksLayer7TimeseriesGroupByIpVersionMitigationProduct._('ACCESS_RULES');

static const RadarGetAttacksLayer7TimeseriesGroupByIpVersionMitigationProduct ipReputation = RadarGetAttacksLayer7TimeseriesGroupByIpVersionMitigationProduct._('IP_REPUTATION');

static const RadarGetAttacksLayer7TimeseriesGroupByIpVersionMitigationProduct apiShield = RadarGetAttacksLayer7TimeseriesGroupByIpVersionMitigationProduct._('API_SHIELD');

static const RadarGetAttacksLayer7TimeseriesGroupByIpVersionMitigationProduct dataLossPrevention = RadarGetAttacksLayer7TimeseriesGroupByIpVersionMitigationProduct._('DATA_LOSS_PREVENTION');

static const List<RadarGetAttacksLayer7TimeseriesGroupByIpVersionMitigationProduct> values = [ddos, waf, botManagement, accessRules, ipReputation, apiShield, dataLossPrevention];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer7TimeseriesGroupByIpVersionMitigationProduct && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer7TimeseriesGroupByIpVersionMitigationProduct($value)'; } 
 }
