// GENERATED CODE - DO NOT MODIFY BY HAND

import 'payment_intent_param_three_d_secure_network_options.dart';final class PaymentIntentParamThreeDSecureAresTransStatus {const PaymentIntentParamThreeDSecureAresTransStatus._(this.value);

factory PaymentIntentParamThreeDSecureAresTransStatus.fromJson(String json) { return switch (json) {
  'A' => a,
  'C' => c,
  'I' => i,
  'N' => n,
  'R' => r,
  'U' => u,
  'Y' => y,
  _ => PaymentIntentParamThreeDSecureAresTransStatus._(json),
}; }

static const PaymentIntentParamThreeDSecureAresTransStatus a = PaymentIntentParamThreeDSecureAresTransStatus._('A');

static const PaymentIntentParamThreeDSecureAresTransStatus c = PaymentIntentParamThreeDSecureAresTransStatus._('C');

static const PaymentIntentParamThreeDSecureAresTransStatus i = PaymentIntentParamThreeDSecureAresTransStatus._('I');

static const PaymentIntentParamThreeDSecureAresTransStatus n = PaymentIntentParamThreeDSecureAresTransStatus._('N');

static const PaymentIntentParamThreeDSecureAresTransStatus r = PaymentIntentParamThreeDSecureAresTransStatus._('R');

static const PaymentIntentParamThreeDSecureAresTransStatus u = PaymentIntentParamThreeDSecureAresTransStatus._('U');

static const PaymentIntentParamThreeDSecureAresTransStatus y = PaymentIntentParamThreeDSecureAresTransStatus._('Y');

static const List<PaymentIntentParamThreeDSecureAresTransStatus> values = [a, c, i, n, r, u, y];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentParamThreeDSecureAresTransStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentParamThreeDSecureAresTransStatus($value)'; } 
 }
final class PaymentIntentParamThreeDSecureElectronicCommerceIndicator {const PaymentIntentParamThreeDSecureElectronicCommerceIndicator._(this.value);

factory PaymentIntentParamThreeDSecureElectronicCommerceIndicator.fromJson(String json) { return switch (json) {
  '01' => $01,
  '02' => $02,
  '05' => $05,
  '06' => $06,
  '07' => $07,
  _ => PaymentIntentParamThreeDSecureElectronicCommerceIndicator._(json),
}; }

static const PaymentIntentParamThreeDSecureElectronicCommerceIndicator $01 = PaymentIntentParamThreeDSecureElectronicCommerceIndicator._('01');

static const PaymentIntentParamThreeDSecureElectronicCommerceIndicator $02 = PaymentIntentParamThreeDSecureElectronicCommerceIndicator._('02');

static const PaymentIntentParamThreeDSecureElectronicCommerceIndicator $05 = PaymentIntentParamThreeDSecureElectronicCommerceIndicator._('05');

static const PaymentIntentParamThreeDSecureElectronicCommerceIndicator $06 = PaymentIntentParamThreeDSecureElectronicCommerceIndicator._('06');

static const PaymentIntentParamThreeDSecureElectronicCommerceIndicator $07 = PaymentIntentParamThreeDSecureElectronicCommerceIndicator._('07');

static const List<PaymentIntentParamThreeDSecureElectronicCommerceIndicator> values = [$01, $02, $05, $06, $07];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentParamThreeDSecureElectronicCommerceIndicator && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentParamThreeDSecureElectronicCommerceIndicator($value)'; } 
 }
final class PaymentIntentParamThreeDSecureExemptionIndicator {const PaymentIntentParamThreeDSecureExemptionIndicator._(this.value);

factory PaymentIntentParamThreeDSecureExemptionIndicator.fromJson(String json) { return switch (json) {
  'low_risk' => lowRisk,
  'none' => none,
  _ => PaymentIntentParamThreeDSecureExemptionIndicator._(json),
}; }

static const PaymentIntentParamThreeDSecureExemptionIndicator lowRisk = PaymentIntentParamThreeDSecureExemptionIndicator._('low_risk');

static const PaymentIntentParamThreeDSecureExemptionIndicator none = PaymentIntentParamThreeDSecureExemptionIndicator._('none');

static const List<PaymentIntentParamThreeDSecureExemptionIndicator> values = [lowRisk, none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentParamThreeDSecureExemptionIndicator && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentParamThreeDSecureExemptionIndicator($value)'; } 
 }
final class PaymentIntentParamThreeDSecureVersion {const PaymentIntentParamThreeDSecureVersion._(this.value);

factory PaymentIntentParamThreeDSecureVersion.fromJson(String json) { return switch (json) {
  '1.0.2' => $102,
  '2.1.0' => $210,
  '2.2.0' => $220,
  '2.3.0' => $230,
  '2.3.1' => $231,
  _ => PaymentIntentParamThreeDSecureVersion._(json),
}; }

static const PaymentIntentParamThreeDSecureVersion $102 = PaymentIntentParamThreeDSecureVersion._('1.0.2');

static const PaymentIntentParamThreeDSecureVersion $210 = PaymentIntentParamThreeDSecureVersion._('2.1.0');

static const PaymentIntentParamThreeDSecureVersion $220 = PaymentIntentParamThreeDSecureVersion._('2.2.0');

static const PaymentIntentParamThreeDSecureVersion $230 = PaymentIntentParamThreeDSecureVersion._('2.3.0');

static const PaymentIntentParamThreeDSecureVersion $231 = PaymentIntentParamThreeDSecureVersion._('2.3.1');

static const List<PaymentIntentParamThreeDSecureVersion> values = [$102, $210, $220, $230, $231];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentParamThreeDSecureVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentParamThreeDSecureVersion($value)'; } 
 }
final class PaymentIntentParamThreeDSecure {const PaymentIntentParamThreeDSecure({this.aresTransStatus, required this.cryptogram, this.electronicCommerceIndicator, this.exemptionIndicator, this.networkOptions, this.requestorChallengeIndicator, required this.transactionId, required this.version, });

factory PaymentIntentParamThreeDSecure.fromJson(Map<String, dynamic> json) { return PaymentIntentParamThreeDSecure(
  aresTransStatus: json['ares_trans_status'] != null ? PaymentIntentParamThreeDSecureAresTransStatus.fromJson(json['ares_trans_status'] as String) : null,
  cryptogram: json['cryptogram'] as String,
  electronicCommerceIndicator: json['electronic_commerce_indicator'] != null ? PaymentIntentParamThreeDSecureElectronicCommerceIndicator.fromJson(json['electronic_commerce_indicator'] as String) : null,
  exemptionIndicator: json['exemption_indicator'] != null ? PaymentIntentParamThreeDSecureExemptionIndicator.fromJson(json['exemption_indicator'] as String) : null,
  networkOptions: json['network_options'] != null ? PaymentIntentParamThreeDSecureNetworkOptions.fromJson(json['network_options'] as Map<String, dynamic>) : null,
  requestorChallengeIndicator: json['requestor_challenge_indicator'] as String?,
  transactionId: json['transaction_id'] as String,
  version: PaymentIntentParamThreeDSecureVersion.fromJson(json['version'] as String),
); }

final PaymentIntentParamThreeDSecureAresTransStatus? aresTransStatus;

final String cryptogram;

final PaymentIntentParamThreeDSecureElectronicCommerceIndicator? electronicCommerceIndicator;

final PaymentIntentParamThreeDSecureExemptionIndicator? exemptionIndicator;

final PaymentIntentParamThreeDSecureNetworkOptions? networkOptions;

final String? requestorChallengeIndicator;

final String transactionId;

final PaymentIntentParamThreeDSecureVersion version;

Map<String, dynamic> toJson() { return {
  if (aresTransStatus != null) 'ares_trans_status': aresTransStatus?.toJson(),
  'cryptogram': cryptogram,
  if (electronicCommerceIndicator != null) 'electronic_commerce_indicator': electronicCommerceIndicator?.toJson(),
  if (exemptionIndicator != null) 'exemption_indicator': exemptionIndicator?.toJson(),
  if (networkOptions != null) 'network_options': networkOptions?.toJson(),
  'requestor_challenge_indicator': ?requestorChallengeIndicator,
  'transaction_id': transactionId,
  'version': version.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('cryptogram') && json['cryptogram'] is String &&
      json.containsKey('transaction_id') && json['transaction_id'] is String &&
      json.containsKey('version'); } 
PaymentIntentParamThreeDSecure copyWith({PaymentIntentParamThreeDSecureAresTransStatus Function()? aresTransStatus, String? cryptogram, PaymentIntentParamThreeDSecureElectronicCommerceIndicator Function()? electronicCommerceIndicator, PaymentIntentParamThreeDSecureExemptionIndicator Function()? exemptionIndicator, PaymentIntentParamThreeDSecureNetworkOptions Function()? networkOptions, String Function()? requestorChallengeIndicator, String? transactionId, PaymentIntentParamThreeDSecureVersion? version, }) { return PaymentIntentParamThreeDSecure(
  aresTransStatus: aresTransStatus != null ? aresTransStatus() : this.aresTransStatus,
  cryptogram: cryptogram ?? this.cryptogram,
  electronicCommerceIndicator: electronicCommerceIndicator != null ? electronicCommerceIndicator() : this.electronicCommerceIndicator,
  exemptionIndicator: exemptionIndicator != null ? exemptionIndicator() : this.exemptionIndicator,
  networkOptions: networkOptions != null ? networkOptions() : this.networkOptions,
  requestorChallengeIndicator: requestorChallengeIndicator != null ? requestorChallengeIndicator() : this.requestorChallengeIndicator,
  transactionId: transactionId ?? this.transactionId,
  version: version ?? this.version,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentIntentParamThreeDSecure &&
          aresTransStatus == other.aresTransStatus &&
          cryptogram == other.cryptogram &&
          electronicCommerceIndicator == other.electronicCommerceIndicator &&
          exemptionIndicator == other.exemptionIndicator &&
          networkOptions == other.networkOptions &&
          requestorChallengeIndicator == other.requestorChallengeIndicator &&
          transactionId == other.transactionId &&
          version == other.version; } 
@override int get hashCode { return Object.hash(aresTransStatus, cryptogram, electronicCommerceIndicator, exemptionIndicator, networkOptions, requestorChallengeIndicator, transactionId, version); } 
@override String toString() { return 'PaymentIntentParamThreeDSecure(aresTransStatus: $aresTransStatus, cryptogram: $cryptogram, electronicCommerceIndicator: $electronicCommerceIndicator, exemptionIndicator: $exemptionIndicator, networkOptions: $networkOptions, requestorChallengeIndicator: $requestorChallengeIndicator, transactionId: $transactionId, version: $version)'; } 
 }
