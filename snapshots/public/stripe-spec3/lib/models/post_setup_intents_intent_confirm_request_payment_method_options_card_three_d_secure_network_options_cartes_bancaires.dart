// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancairesCbAvalgo {const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancairesCbAvalgo._(this.value);

factory PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancairesCbAvalgo.fromJson(String json) { return switch (json) {
  '0' => $0,
  '1' => $1,
  '2' => $2,
  '3' => $3,
  '4' => $4,
  'A' => a,
  _ => PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancairesCbAvalgo._(json),
}; }

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancairesCbAvalgo $0 = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancairesCbAvalgo._('0');

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancairesCbAvalgo $1 = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancairesCbAvalgo._('1');

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancairesCbAvalgo $2 = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancairesCbAvalgo._('2');

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancairesCbAvalgo $3 = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancairesCbAvalgo._('3');

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancairesCbAvalgo $4 = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancairesCbAvalgo._('4');

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancairesCbAvalgo a = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancairesCbAvalgo._('A');

static const List<PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancairesCbAvalgo> values = [$0, $1, $2, $3, $4, a];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancairesCbAvalgo && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancairesCbAvalgo($value)'; } 
 }
@immutable final class PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancaires {const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancaires({required this.cbAvalgo, this.cbExemption, this.cbScore, });

factory PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancaires.fromJson(Map<String, dynamic> json) { return PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancaires(
  cbAvalgo: PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancairesCbAvalgo.fromJson(json['cb_avalgo'] as String),
  cbExemption: json['cb_exemption'] as String?,
  cbScore: json['cb_score'] != null ? (json['cb_score'] as num).toInt() : null,
); }

final PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancairesCbAvalgo cbAvalgo;

final String? cbExemption;

final int? cbScore;

Map<String, dynamic> toJson() { return {
  'cb_avalgo': cbAvalgo.toJson(),
  'cb_exemption': ?cbExemption,
  'cb_score': ?cbScore,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('cb_avalgo'); } 
PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancaires copyWith({PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancairesCbAvalgo? cbAvalgo, String Function()? cbExemption, int Function()? cbScore, }) { return PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancaires(
  cbAvalgo: cbAvalgo ?? this.cbAvalgo,
  cbExemption: cbExemption != null ? cbExemption() : this.cbExemption,
  cbScore: cbScore != null ? cbScore() : this.cbScore,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancaires &&
          cbAvalgo == other.cbAvalgo &&
          cbExemption == other.cbExemption &&
          cbScore == other.cbScore; } 
@override int get hashCode { return Object.hash(cbAvalgo, cbExemption, cbScore); } 
@override String toString() { return 'PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancaires(cbAvalgo: $cbAvalgo, cbExemption: $cbExemption, cbScore: $cbScore)'; } 
 }
