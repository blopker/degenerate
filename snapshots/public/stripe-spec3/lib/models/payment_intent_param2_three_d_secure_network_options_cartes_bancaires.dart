// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentIntentParam2ThreeDSecureNetworkOptionsCartesBancairesCbAvalgo {const PaymentIntentParam2ThreeDSecureNetworkOptionsCartesBancairesCbAvalgo._(this.value);

factory PaymentIntentParam2ThreeDSecureNetworkOptionsCartesBancairesCbAvalgo.fromJson(String json) { return switch (json) {
  '0' => $0,
  '1' => $1,
  '2' => $2,
  '3' => $3,
  '4' => $4,
  'A' => a,
  _ => PaymentIntentParam2ThreeDSecureNetworkOptionsCartesBancairesCbAvalgo._(json),
}; }

static const PaymentIntentParam2ThreeDSecureNetworkOptionsCartesBancairesCbAvalgo $0 = PaymentIntentParam2ThreeDSecureNetworkOptionsCartesBancairesCbAvalgo._('0');

static const PaymentIntentParam2ThreeDSecureNetworkOptionsCartesBancairesCbAvalgo $1 = PaymentIntentParam2ThreeDSecureNetworkOptionsCartesBancairesCbAvalgo._('1');

static const PaymentIntentParam2ThreeDSecureNetworkOptionsCartesBancairesCbAvalgo $2 = PaymentIntentParam2ThreeDSecureNetworkOptionsCartesBancairesCbAvalgo._('2');

static const PaymentIntentParam2ThreeDSecureNetworkOptionsCartesBancairesCbAvalgo $3 = PaymentIntentParam2ThreeDSecureNetworkOptionsCartesBancairesCbAvalgo._('3');

static const PaymentIntentParam2ThreeDSecureNetworkOptionsCartesBancairesCbAvalgo $4 = PaymentIntentParam2ThreeDSecureNetworkOptionsCartesBancairesCbAvalgo._('4');

static const PaymentIntentParam2ThreeDSecureNetworkOptionsCartesBancairesCbAvalgo a = PaymentIntentParam2ThreeDSecureNetworkOptionsCartesBancairesCbAvalgo._('A');

static const List<PaymentIntentParam2ThreeDSecureNetworkOptionsCartesBancairesCbAvalgo> values = [$0, $1, $2, $3, $4, a];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentParam2ThreeDSecureNetworkOptionsCartesBancairesCbAvalgo && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentParam2ThreeDSecureNetworkOptionsCartesBancairesCbAvalgo($value)'; } 
 }
@immutable final class PaymentIntentParam2ThreeDSecureNetworkOptionsCartesBancaires {const PaymentIntentParam2ThreeDSecureNetworkOptionsCartesBancaires({required this.cbAvalgo, this.cbExemption, this.cbScore, });

factory PaymentIntentParam2ThreeDSecureNetworkOptionsCartesBancaires.fromJson(Map<String, dynamic> json) { return PaymentIntentParam2ThreeDSecureNetworkOptionsCartesBancaires(
  cbAvalgo: PaymentIntentParam2ThreeDSecureNetworkOptionsCartesBancairesCbAvalgo.fromJson(json['cb_avalgo'] as String),
  cbExemption: json['cb_exemption'] as String?,
  cbScore: json['cb_score'] != null ? (json['cb_score'] as num).toInt() : null,
); }

final PaymentIntentParam2ThreeDSecureNetworkOptionsCartesBancairesCbAvalgo cbAvalgo;

final String? cbExemption;

final int? cbScore;

Map<String, dynamic> toJson() { return {
  'cb_avalgo': cbAvalgo.toJson(),
  'cb_exemption': ?cbExemption,
  'cb_score': ?cbScore,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('cb_avalgo'); } 
PaymentIntentParam2ThreeDSecureNetworkOptionsCartesBancaires copyWith({PaymentIntentParam2ThreeDSecureNetworkOptionsCartesBancairesCbAvalgo? cbAvalgo, String Function()? cbExemption, int Function()? cbScore, }) { return PaymentIntentParam2ThreeDSecureNetworkOptionsCartesBancaires(
  cbAvalgo: cbAvalgo ?? this.cbAvalgo,
  cbExemption: cbExemption != null ? cbExemption() : this.cbExemption,
  cbScore: cbScore != null ? cbScore() : this.cbScore,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentIntentParam2ThreeDSecureNetworkOptionsCartesBancaires &&
          cbAvalgo == other.cbAvalgo &&
          cbExemption == other.cbExemption &&
          cbScore == other.cbScore; } 
@override int get hashCode { return Object.hash(cbAvalgo, cbExemption, cbScore); } 
@override String toString() { return 'PaymentIntentParam2ThreeDSecureNetworkOptionsCartesBancaires(cbAvalgo: $cbAvalgo, cbExemption: $cbExemption, cbScore: $cbScore)'; } 
 }
