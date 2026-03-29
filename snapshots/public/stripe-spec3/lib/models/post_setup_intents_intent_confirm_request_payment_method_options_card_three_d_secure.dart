// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_setup_intents_intent_confirm_request_payment_method_options_card_three_d_secure_network_options.dart';final class PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureAresTransStatus {const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureAresTransStatus._(this.value);

factory PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureAresTransStatus.fromJson(String json) { return switch (json) {
  'A' => a,
  'C' => c,
  'I' => i,
  'N' => n,
  'R' => r,
  'U' => u,
  'Y' => y,
  _ => PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureAresTransStatus._(json),
}; }

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureAresTransStatus a = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureAresTransStatus._('A');

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureAresTransStatus c = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureAresTransStatus._('C');

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureAresTransStatus i = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureAresTransStatus._('I');

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureAresTransStatus n = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureAresTransStatus._('N');

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureAresTransStatus r = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureAresTransStatus._('R');

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureAresTransStatus u = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureAresTransStatus._('U');

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureAresTransStatus y = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureAresTransStatus._('Y');

static const List<PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureAresTransStatus> values = [a, c, i, n, r, u, y];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureAresTransStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureAresTransStatus($value)'; } 
 }
final class PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureElectronicCommerceIndicator {const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureElectronicCommerceIndicator._(this.value);

factory PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureElectronicCommerceIndicator.fromJson(String json) { return switch (json) {
  '01' => $01,
  '02' => $02,
  '05' => $05,
  '06' => $06,
  '07' => $07,
  _ => PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureElectronicCommerceIndicator._(json),
}; }

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureElectronicCommerceIndicator $01 = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureElectronicCommerceIndicator._('01');

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureElectronicCommerceIndicator $02 = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureElectronicCommerceIndicator._('02');

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureElectronicCommerceIndicator $05 = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureElectronicCommerceIndicator._('05');

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureElectronicCommerceIndicator $06 = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureElectronicCommerceIndicator._('06');

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureElectronicCommerceIndicator $07 = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureElectronicCommerceIndicator._('07');

static const List<PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureElectronicCommerceIndicator> values = [$01, $02, $05, $06, $07];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureElectronicCommerceIndicator && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureElectronicCommerceIndicator($value)'; } 
 }
final class PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureVersion {const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureVersion._(this.value);

factory PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureVersion.fromJson(String json) { return switch (json) {
  '1.0.2' => $102,
  '2.1.0' => $210,
  '2.2.0' => $220,
  '2.3.0' => $230,
  '2.3.1' => $231,
  _ => PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureVersion._(json),
}; }

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureVersion $102 = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureVersion._('1.0.2');

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureVersion $210 = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureVersion._('2.1.0');

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureVersion $220 = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureVersion._('2.2.0');

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureVersion $230 = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureVersion._('2.3.0');

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureVersion $231 = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureVersion._('2.3.1');

static const List<PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureVersion> values = [$102, $210, $220, $230, $231];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureVersion($value)'; } 
 }
final class PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecure {const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecure({this.aresTransStatus, this.cryptogram, this.electronicCommerceIndicator, this.networkOptions, this.requestorChallengeIndicator, this.transactionId, this.version, });

factory PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecure.fromJson(Map<String, dynamic> json) { return PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecure(
  aresTransStatus: json['ares_trans_status'] != null ? PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureAresTransStatus.fromJson(json['ares_trans_status'] as String) : null,
  cryptogram: json['cryptogram'] as String?,
  electronicCommerceIndicator: json['electronic_commerce_indicator'] != null ? PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureElectronicCommerceIndicator.fromJson(json['electronic_commerce_indicator'] as String) : null,
  networkOptions: json['network_options'] != null ? PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureNetworkOptions.fromJson(json['network_options'] as Map<String, dynamic>) : null,
  requestorChallengeIndicator: json['requestor_challenge_indicator'] as String?,
  transactionId: json['transaction_id'] as String?,
  version: json['version'] != null ? PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureVersion.fromJson(json['version'] as String) : null,
); }

final PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureAresTransStatus? aresTransStatus;

final String? cryptogram;

final PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureElectronicCommerceIndicator? electronicCommerceIndicator;

final PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureNetworkOptions? networkOptions;

final String? requestorChallengeIndicator;

final String? transactionId;

final PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureVersion? version;

Map<String, dynamic> toJson() { return {
  if (aresTransStatus != null) 'ares_trans_status': aresTransStatus?.toJson(),
  'cryptogram': ?cryptogram,
  if (electronicCommerceIndicator != null) 'electronic_commerce_indicator': electronicCommerceIndicator?.toJson(),
  if (networkOptions != null) 'network_options': networkOptions?.toJson(),
  'requestor_challenge_indicator': ?requestorChallengeIndicator,
  'transaction_id': ?transactionId,
  if (version != null) 'version': version?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecure copyWith({PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureAresTransStatus Function()? aresTransStatus, String Function()? cryptogram, PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureElectronicCommerceIndicator Function()? electronicCommerceIndicator, PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureNetworkOptions Function()? networkOptions, String Function()? requestorChallengeIndicator, String Function()? transactionId, PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecureVersion Function()? version, }) { return PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecure(
  aresTransStatus: aresTransStatus != null ? aresTransStatus() : this.aresTransStatus,
  cryptogram: cryptogram != null ? cryptogram() : this.cryptogram,
  electronicCommerceIndicator: electronicCommerceIndicator != null ? electronicCommerceIndicator() : this.electronicCommerceIndicator,
  networkOptions: networkOptions != null ? networkOptions() : this.networkOptions,
  requestorChallengeIndicator: requestorChallengeIndicator != null ? requestorChallengeIndicator() : this.requestorChallengeIndicator,
  transactionId: transactionId != null ? transactionId() : this.transactionId,
  version: version != null ? version() : this.version,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecure &&
          aresTransStatus == other.aresTransStatus &&
          cryptogram == other.cryptogram &&
          electronicCommerceIndicator == other.electronicCommerceIndicator &&
          networkOptions == other.networkOptions &&
          requestorChallengeIndicator == other.requestorChallengeIndicator &&
          transactionId == other.transactionId &&
          version == other.version; } 
@override int get hashCode { return Object.hash(aresTransStatus, cryptogram, electronicCommerceIndicator, networkOptions, requestorChallengeIndicator, transactionId, version); } 
@override String toString() { return 'PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsCardThreeDSecure(aresTransStatus: $aresTransStatus, cryptogram: $cryptogram, electronicCommerceIndicator: $electronicCommerceIndicator, networkOptions: $networkOptions, requestorChallengeIndicator: $requestorChallengeIndicator, transactionId: $transactionId, version: $version)'; } 
 }
