// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetAttacksLayer7TopAttacksMitigationProduct {const RadarGetAttacksLayer7TopAttacksMitigationProduct._(this.value);

factory RadarGetAttacksLayer7TopAttacksMitigationProduct.fromJson(String json) { return switch (json) {
  'DDOS' => ddos,
  'WAF' => waf,
  'BOT_MANAGEMENT' => botManagement,
  'ACCESS_RULES' => accessRules,
  'IP_REPUTATION' => ipReputation,
  'API_SHIELD' => apiShield,
  'DATA_LOSS_PREVENTION' => dataLossPrevention,
  _ => RadarGetAttacksLayer7TopAttacksMitigationProduct._(json),
}; }

static const RadarGetAttacksLayer7TopAttacksMitigationProduct ddos = RadarGetAttacksLayer7TopAttacksMitigationProduct._('DDOS');

static const RadarGetAttacksLayer7TopAttacksMitigationProduct waf = RadarGetAttacksLayer7TopAttacksMitigationProduct._('WAF');

static const RadarGetAttacksLayer7TopAttacksMitigationProduct botManagement = RadarGetAttacksLayer7TopAttacksMitigationProduct._('BOT_MANAGEMENT');

static const RadarGetAttacksLayer7TopAttacksMitigationProduct accessRules = RadarGetAttacksLayer7TopAttacksMitigationProduct._('ACCESS_RULES');

static const RadarGetAttacksLayer7TopAttacksMitigationProduct ipReputation = RadarGetAttacksLayer7TopAttacksMitigationProduct._('IP_REPUTATION');

static const RadarGetAttacksLayer7TopAttacksMitigationProduct apiShield = RadarGetAttacksLayer7TopAttacksMitigationProduct._('API_SHIELD');

static const RadarGetAttacksLayer7TopAttacksMitigationProduct dataLossPrevention = RadarGetAttacksLayer7TopAttacksMitigationProduct._('DATA_LOSS_PREVENTION');

static const List<RadarGetAttacksLayer7TopAttacksMitigationProduct> values = [ddos, waf, botManagement, accessRules, ipReputation, apiShield, dataLossPrevention];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer7TopAttacksMitigationProduct && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer7TopAttacksMitigationProduct($value)'; } 
 }
