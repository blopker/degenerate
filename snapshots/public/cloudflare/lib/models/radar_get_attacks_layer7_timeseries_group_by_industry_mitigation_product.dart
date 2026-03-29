// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetAttacksLayer7TimeseriesGroupByIndustryMitigationProduct {const RadarGetAttacksLayer7TimeseriesGroupByIndustryMitigationProduct._(this.value);

factory RadarGetAttacksLayer7TimeseriesGroupByIndustryMitigationProduct.fromJson(String json) { return switch (json) {
  'DDOS' => ddos,
  'WAF' => waf,
  'BOT_MANAGEMENT' => botManagement,
  'ACCESS_RULES' => accessRules,
  'IP_REPUTATION' => ipReputation,
  'API_SHIELD' => apiShield,
  'DATA_LOSS_PREVENTION' => dataLossPrevention,
  _ => RadarGetAttacksLayer7TimeseriesGroupByIndustryMitigationProduct._(json),
}; }

static const RadarGetAttacksLayer7TimeseriesGroupByIndustryMitigationProduct ddos = RadarGetAttacksLayer7TimeseriesGroupByIndustryMitigationProduct._('DDOS');

static const RadarGetAttacksLayer7TimeseriesGroupByIndustryMitigationProduct waf = RadarGetAttacksLayer7TimeseriesGroupByIndustryMitigationProduct._('WAF');

static const RadarGetAttacksLayer7TimeseriesGroupByIndustryMitigationProduct botManagement = RadarGetAttacksLayer7TimeseriesGroupByIndustryMitigationProduct._('BOT_MANAGEMENT');

static const RadarGetAttacksLayer7TimeseriesGroupByIndustryMitigationProduct accessRules = RadarGetAttacksLayer7TimeseriesGroupByIndustryMitigationProduct._('ACCESS_RULES');

static const RadarGetAttacksLayer7TimeseriesGroupByIndustryMitigationProduct ipReputation = RadarGetAttacksLayer7TimeseriesGroupByIndustryMitigationProduct._('IP_REPUTATION');

static const RadarGetAttacksLayer7TimeseriesGroupByIndustryMitigationProduct apiShield = RadarGetAttacksLayer7TimeseriesGroupByIndustryMitigationProduct._('API_SHIELD');

static const RadarGetAttacksLayer7TimeseriesGroupByIndustryMitigationProduct dataLossPrevention = RadarGetAttacksLayer7TimeseriesGroupByIndustryMitigationProduct._('DATA_LOSS_PREVENTION');

static const List<RadarGetAttacksLayer7TimeseriesGroupByIndustryMitigationProduct> values = [ddos, waf, botManagement, accessRules, ipReputation, apiShield, dataLossPrevention];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer7TimeseriesGroupByIndustryMitigationProduct && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer7TimeseriesGroupByIndustryMitigationProduct($value)'; } 
 }
