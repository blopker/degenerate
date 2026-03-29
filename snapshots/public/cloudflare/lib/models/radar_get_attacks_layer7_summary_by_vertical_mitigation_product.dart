// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetAttacksLayer7SummaryByVerticalMitigationProduct {const RadarGetAttacksLayer7SummaryByVerticalMitigationProduct._(this.value);

factory RadarGetAttacksLayer7SummaryByVerticalMitigationProduct.fromJson(String json) { return switch (json) {
  'DDOS' => ddos,
  'WAF' => waf,
  'BOT_MANAGEMENT' => botManagement,
  'ACCESS_RULES' => accessRules,
  'IP_REPUTATION' => ipReputation,
  'API_SHIELD' => apiShield,
  'DATA_LOSS_PREVENTION' => dataLossPrevention,
  _ => RadarGetAttacksLayer7SummaryByVerticalMitigationProduct._(json),
}; }

static const RadarGetAttacksLayer7SummaryByVerticalMitigationProduct ddos = RadarGetAttacksLayer7SummaryByVerticalMitigationProduct._('DDOS');

static const RadarGetAttacksLayer7SummaryByVerticalMitigationProduct waf = RadarGetAttacksLayer7SummaryByVerticalMitigationProduct._('WAF');

static const RadarGetAttacksLayer7SummaryByVerticalMitigationProduct botManagement = RadarGetAttacksLayer7SummaryByVerticalMitigationProduct._('BOT_MANAGEMENT');

static const RadarGetAttacksLayer7SummaryByVerticalMitigationProduct accessRules = RadarGetAttacksLayer7SummaryByVerticalMitigationProduct._('ACCESS_RULES');

static const RadarGetAttacksLayer7SummaryByVerticalMitigationProduct ipReputation = RadarGetAttacksLayer7SummaryByVerticalMitigationProduct._('IP_REPUTATION');

static const RadarGetAttacksLayer7SummaryByVerticalMitigationProduct apiShield = RadarGetAttacksLayer7SummaryByVerticalMitigationProduct._('API_SHIELD');

static const RadarGetAttacksLayer7SummaryByVerticalMitigationProduct dataLossPrevention = RadarGetAttacksLayer7SummaryByVerticalMitigationProduct._('DATA_LOSS_PREVENTION');

static const List<RadarGetAttacksLayer7SummaryByVerticalMitigationProduct> values = [ddos, waf, botManagement, accessRules, ipReputation, apiShield, dataLossPrevention];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer7SummaryByVerticalMitigationProduct && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer7SummaryByVerticalMitigationProduct($value)'; } 
 }
