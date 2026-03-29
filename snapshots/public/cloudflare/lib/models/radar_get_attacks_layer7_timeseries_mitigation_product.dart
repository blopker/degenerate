// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetAttacksLayer7TimeseriesMitigationProduct {const RadarGetAttacksLayer7TimeseriesMitigationProduct._(this.value);

factory RadarGetAttacksLayer7TimeseriesMitigationProduct.fromJson(String json) { return switch (json) {
  'DDOS' => ddos,
  'WAF' => waf,
  'BOT_MANAGEMENT' => botManagement,
  'ACCESS_RULES' => accessRules,
  'IP_REPUTATION' => ipReputation,
  'API_SHIELD' => apiShield,
  'DATA_LOSS_PREVENTION' => dataLossPrevention,
  _ => RadarGetAttacksLayer7TimeseriesMitigationProduct._(json),
}; }

static const RadarGetAttacksLayer7TimeseriesMitigationProduct ddos = RadarGetAttacksLayer7TimeseriesMitigationProduct._('DDOS');

static const RadarGetAttacksLayer7TimeseriesMitigationProduct waf = RadarGetAttacksLayer7TimeseriesMitigationProduct._('WAF');

static const RadarGetAttacksLayer7TimeseriesMitigationProduct botManagement = RadarGetAttacksLayer7TimeseriesMitigationProduct._('BOT_MANAGEMENT');

static const RadarGetAttacksLayer7TimeseriesMitigationProduct accessRules = RadarGetAttacksLayer7TimeseriesMitigationProduct._('ACCESS_RULES');

static const RadarGetAttacksLayer7TimeseriesMitigationProduct ipReputation = RadarGetAttacksLayer7TimeseriesMitigationProduct._('IP_REPUTATION');

static const RadarGetAttacksLayer7TimeseriesMitigationProduct apiShield = RadarGetAttacksLayer7TimeseriesMitigationProduct._('API_SHIELD');

static const RadarGetAttacksLayer7TimeseriesMitigationProduct dataLossPrevention = RadarGetAttacksLayer7TimeseriesMitigationProduct._('DATA_LOSS_PREVENTION');

static const List<RadarGetAttacksLayer7TimeseriesMitigationProduct> values = [ddos, waf, botManagement, accessRules, ipReputation, apiShield, dataLossPrevention];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer7TimeseriesMitigationProduct && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer7TimeseriesMitigationProduct($value)'; } 
 }
