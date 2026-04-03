// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSetupIntentsRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancairesCbAvalgo {const PostSetupIntentsRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancairesCbAvalgo._(this.value);

factory PostSetupIntentsRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancairesCbAvalgo.fromJson(String json) { return switch (json) {
  '0' => $0,
  '1' => $1,
  '2' => $2,
  '3' => $3,
  '4' => $4,
  'A' => a,
  _ => PostSetupIntentsRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancairesCbAvalgo._(json),
}; }

static const PostSetupIntentsRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancairesCbAvalgo $0 = PostSetupIntentsRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancairesCbAvalgo._('0');

static const PostSetupIntentsRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancairesCbAvalgo $1 = PostSetupIntentsRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancairesCbAvalgo._('1');

static const PostSetupIntentsRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancairesCbAvalgo $2 = PostSetupIntentsRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancairesCbAvalgo._('2');

static const PostSetupIntentsRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancairesCbAvalgo $3 = PostSetupIntentsRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancairesCbAvalgo._('3');

static const PostSetupIntentsRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancairesCbAvalgo $4 = PostSetupIntentsRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancairesCbAvalgo._('4');

static const PostSetupIntentsRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancairesCbAvalgo a = PostSetupIntentsRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancairesCbAvalgo._('A');

static const List<PostSetupIntentsRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancairesCbAvalgo> values = [$0, $1, $2, $3, $4, a];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancairesCbAvalgo && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancairesCbAvalgo($value)'; } 
 }
@immutable final class PostSetupIntentsRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancaires {const PostSetupIntentsRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancaires({required this.cbAvalgo, this.cbExemption, this.cbScore, });

factory PostSetupIntentsRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancaires.fromJson(Map<String, dynamic> json) { return PostSetupIntentsRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancaires(
  cbAvalgo: PostSetupIntentsRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancairesCbAvalgo.fromJson(json['cb_avalgo'] as String),
  cbExemption: json['cb_exemption'] as String?,
  cbScore: json['cb_score'] != null ? (json['cb_score'] as num).toInt() : null,
); }

final PostSetupIntentsRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancairesCbAvalgo cbAvalgo;

final String? cbExemption;

final int? cbScore;

Map<String, dynamic> toJson() { return {
  'cb_avalgo': cbAvalgo.toJson(),
  'cb_exemption': ?cbExemption,
  'cb_score': ?cbScore,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('cb_avalgo'); } 
PostSetupIntentsRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancaires copyWith({PostSetupIntentsRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancairesCbAvalgo? cbAvalgo, String Function()? cbExemption, int Function()? cbScore, }) { return PostSetupIntentsRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancaires(
  cbAvalgo: cbAvalgo ?? this.cbAvalgo,
  cbExemption: cbExemption != null ? cbExemption() : this.cbExemption,
  cbScore: cbScore != null ? cbScore() : this.cbScore,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSetupIntentsRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancaires &&
          cbAvalgo == other.cbAvalgo &&
          cbExemption == other.cbExemption &&
          cbScore == other.cbScore; } 
@override int get hashCode { return Object.hash(cbAvalgo, cbExemption, cbScore); } 
@override String toString() { return 'PostSetupIntentsRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancaires(cbAvalgo: $cbAvalgo, cbExemption: $cbExemption, cbScore: $cbScore)'; } 
 }
