// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'charge_outcome_rule.dart';import 'rule.dart';/// An enumerated value providing a more detailed explanation on [how to proceed with an error](https://docs.stripe.com/declines#retrying-issuer-declines).
@immutable final class ChargeOutcomeAdviceCode {const ChargeOutcomeAdviceCode._(this.value);

factory ChargeOutcomeAdviceCode.fromJson(String json) { return switch (json) {
  'confirm_card_data' => confirmCardData,
  'do_not_try_again' => doNotTryAgain,
  'try_again_later' => tryAgainLater,
  _ => ChargeOutcomeAdviceCode._(json),
}; }

static const ChargeOutcomeAdviceCode confirmCardData = ChargeOutcomeAdviceCode._('confirm_card_data');

static const ChargeOutcomeAdviceCode doNotTryAgain = ChargeOutcomeAdviceCode._('do_not_try_again');

static const ChargeOutcomeAdviceCode tryAgainLater = ChargeOutcomeAdviceCode._('try_again_later');

static const List<ChargeOutcomeAdviceCode> values = [confirmCardData, doNotTryAgain, tryAgainLater];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ChargeOutcomeAdviceCode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ChargeOutcomeAdviceCode($value)'; } 
 }
/// 
@immutable final class ChargeOutcome {const ChargeOutcome({required this.type, this.adviceCode = const Omittable.absent(), this.networkAdviceCode = const Omittable.absent(), this.networkDeclineCode = const Omittable.absent(), this.networkStatus = const Omittable.absent(), this.reason = const Omittable.absent(), this.riskLevel, this.riskScore, this.rule, this.sellerMessage = const Omittable.absent(), });

factory ChargeOutcome.fromJson(Map<String, dynamic> json) { return ChargeOutcome(
  adviceCode: json.containsKey('advice_code') ? Omittable(json['advice_code'] != null ? ChargeOutcomeAdviceCode.fromJson(json['advice_code'] as String) : null) : const Omittable.absent(),
  networkAdviceCode: json.containsKey('network_advice_code') ? Omittable(json['network_advice_code'] as String?) : const Omittable.absent(),
  networkDeclineCode: json.containsKey('network_decline_code') ? Omittable(json['network_decline_code'] as String?) : const Omittable.absent(),
  networkStatus: json.containsKey('network_status') ? Omittable(json['network_status'] as String?) : const Omittable.absent(),
  reason: json.containsKey('reason') ? Omittable(json['reason'] as String?) : const Omittable.absent(),
  riskLevel: json['risk_level'] as String?,
  riskScore: json['risk_score'] != null ? (json['risk_score'] as num).toInt() : null,
  rule: json['rule'] != null ? OneOf2.parse(json['rule'], fromA: (v) => v as String, fromB: (v) => Rule.fromJson(v as Map<String, dynamic>),) : null,
  sellerMessage: json.containsKey('seller_message') ? Omittable(json['seller_message'] as String?) : const Omittable.absent(),
  type: json['type'] as String,
); }

/// An enumerated value providing a more detailed explanation on [how to proceed with an error](https://docs.stripe.com/declines#retrying-issuer-declines).
final Omittable<ChargeOutcomeAdviceCode?> adviceCode;

/// For charges declined by the network, a 2 digit code which indicates the advice returned by the network on how to proceed with an error.
final Omittable<String?> networkAdviceCode;

/// For charges declined by the network, an alphanumeric code which indicates the reason the charge failed.
final Omittable<String?> networkDeclineCode;

/// Possible values are `approved_by_network`, `declined_by_network`, `not_sent_to_network`, and `reversed_after_approval`. The value `reversed_after_approval` indicates the payment was [blocked by Stripe](https://docs.stripe.com/declines#blocked-payments) after bank authorization, and may temporarily appear as "pending" on a cardholder's statement.
final Omittable<String?> networkStatus;

/// An enumerated value providing a more detailed explanation of the outcome's `type`. Charges blocked by Radar's default block rule have the value `highest_risk_level`. Charges placed in review by Radar's default review rule have the value `elevated_risk_level`. Charges blocked because the payment is unlikely to be authorized have the value `low_probability_of_authorization`. Charges authorized, blocked, or placed in review by custom rules have the value `rule`. See [understanding declines](https://docs.stripe.com/declines) for more details.
final Omittable<String?> reason;

/// Stripe Radar's evaluation of the riskiness of the payment. Possible values for evaluated payments are `normal`, `elevated`, `highest`. For non-card payments, and card-based payments predating the public assignment of risk levels, this field will have the value `not_assessed`. In the event of an error in the evaluation, this field will have the value `unknown`. This field is only available with Radar.
final String? riskLevel;

/// Stripe Radar's evaluation of the riskiness of the payment. Possible values for evaluated payments are between 0 and 100. For non-card payments, card-based payments predating the public assignment of risk scores, or in the event of an error during evaluation, this field will not be present. This field is only available with Radar for Fraud Teams.
final int? riskScore;

/// The ID of the Radar rule that matched the payment, if applicable.
final ChargeOutcomeRule? rule;

/// A human-readable description of the outcome type and reason, designed for you (the recipient of the payment), not your customer.
final Omittable<String?> sellerMessage;

/// Possible values are `authorized`, `manual_review`, `issuer_declined`, `blocked`, and `invalid`. See [understanding declines](https://docs.stripe.com/declines) and [Radar reviews](https://docs.stripe.com/radar/reviews) for details.
final String type;

Map<String, dynamic> toJson() { return {
  if (adviceCode.isPresent) 'advice_code': adviceCode.value?.toJson(),
  if (networkAdviceCode.isPresent) 'network_advice_code': networkAdviceCode.value,
  if (networkDeclineCode.isPresent) 'network_decline_code': networkDeclineCode.value,
  if (networkStatus.isPresent) 'network_status': networkStatus.value,
  if (reason.isPresent) 'reason': reason.value,
  'risk_level': ?riskLevel,
  'risk_score': ?riskScore,
  if (rule != null) 'rule': rule?.toJson(),
  if (sellerMessage.isPresent) 'seller_message': sellerMessage.value,
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String; } 
ChargeOutcome copyWith({Omittable<ChargeOutcomeAdviceCode?>? adviceCode, Omittable<String?>? networkAdviceCode, Omittable<String?>? networkDeclineCode, Omittable<String?>? networkStatus, Omittable<String?>? reason, String? Function()? riskLevel, int? Function()? riskScore, ChargeOutcomeRule? Function()? rule, Omittable<String?>? sellerMessage, String? type, }) { return ChargeOutcome(
  adviceCode: adviceCode ?? this.adviceCode,
  networkAdviceCode: networkAdviceCode ?? this.networkAdviceCode,
  networkDeclineCode: networkDeclineCode ?? this.networkDeclineCode,
  networkStatus: networkStatus ?? this.networkStatus,
  reason: reason ?? this.reason,
  riskLevel: riskLevel != null ? riskLevel() : this.riskLevel,
  riskScore: riskScore != null ? riskScore() : this.riskScore,
  rule: rule != null ? rule() : this.rule,
  sellerMessage: sellerMessage ?? this.sellerMessage,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ChargeOutcome &&
          adviceCode == other.adviceCode &&
          networkAdviceCode == other.networkAdviceCode &&
          networkDeclineCode == other.networkDeclineCode &&
          networkStatus == other.networkStatus &&
          reason == other.reason &&
          riskLevel == other.riskLevel &&
          riskScore == other.riskScore &&
          rule == other.rule &&
          sellerMessage == other.sellerMessage &&
          type == other.type; } 
@override int get hashCode { return Object.hash(adviceCode, networkAdviceCode, networkDeclineCode, networkStatus, reason, riskLevel, riskScore, rule, sellerMessage, type); } 
@override String toString() { return 'ChargeOutcome(adviceCode: $adviceCode, networkAdviceCode: $networkAdviceCode, networkDeclineCode: $networkDeclineCode, networkStatus: $networkStatus, reason: $reason, riskLevel: $riskLevel, riskScore: $riskScore, rule: $rule, sellerMessage: $sellerMessage, type: $type)'; } 
 }
