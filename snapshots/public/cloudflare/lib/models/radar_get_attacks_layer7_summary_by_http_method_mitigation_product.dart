// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetAttacksLayer7SummaryByHttpMethodMitigationProduct {const RadarGetAttacksLayer7SummaryByHttpMethodMitigationProduct._(this.value);

factory RadarGetAttacksLayer7SummaryByHttpMethodMitigationProduct.fromJson(String json) { return switch (json) {
  'DDOS' => ddos,
  'WAF' => waf,
  'BOT_MANAGEMENT' => botManagement,
  'ACCESS_RULES' => accessRules,
  'IP_REPUTATION' => ipReputation,
  'API_SHIELD' => apiShield,
  'DATA_LOSS_PREVENTION' => dataLossPrevention,
  _ => RadarGetAttacksLayer7SummaryByHttpMethodMitigationProduct._(json),
}; }

static const RadarGetAttacksLayer7SummaryByHttpMethodMitigationProduct ddos = RadarGetAttacksLayer7SummaryByHttpMethodMitigationProduct._('DDOS');

static const RadarGetAttacksLayer7SummaryByHttpMethodMitigationProduct waf = RadarGetAttacksLayer7SummaryByHttpMethodMitigationProduct._('WAF');

static const RadarGetAttacksLayer7SummaryByHttpMethodMitigationProduct botManagement = RadarGetAttacksLayer7SummaryByHttpMethodMitigationProduct._('BOT_MANAGEMENT');

static const RadarGetAttacksLayer7SummaryByHttpMethodMitigationProduct accessRules = RadarGetAttacksLayer7SummaryByHttpMethodMitigationProduct._('ACCESS_RULES');

static const RadarGetAttacksLayer7SummaryByHttpMethodMitigationProduct ipReputation = RadarGetAttacksLayer7SummaryByHttpMethodMitigationProduct._('IP_REPUTATION');

static const RadarGetAttacksLayer7SummaryByHttpMethodMitigationProduct apiShield = RadarGetAttacksLayer7SummaryByHttpMethodMitigationProduct._('API_SHIELD');

static const RadarGetAttacksLayer7SummaryByHttpMethodMitigationProduct dataLossPrevention = RadarGetAttacksLayer7SummaryByHttpMethodMitigationProduct._('DATA_LOSS_PREVENTION');

static const List<RadarGetAttacksLayer7SummaryByHttpMethodMitigationProduct> values = [ddos, waf, botManagement, accessRules, ipReputation, apiShield, dataLossPrevention];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer7SummaryByHttpMethodMitigationProduct && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer7SummaryByHttpMethodMitigationProduct($value)'; } 
 }
