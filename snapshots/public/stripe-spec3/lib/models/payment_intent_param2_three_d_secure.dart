// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_param2_three_d_secure_network_options.dart';@immutable final class PaymentIntentParam2ThreeDSecureAresTransStatus {const PaymentIntentParam2ThreeDSecureAresTransStatus._(this.value);

factory PaymentIntentParam2ThreeDSecureAresTransStatus.fromJson(String json) { return switch (json) {
  'A' => a,
  'C' => c,
  'I' => i,
  'N' => n,
  'R' => r,
  'U' => u,
  'Y' => y,
  _ => PaymentIntentParam2ThreeDSecureAresTransStatus._(json),
}; }

static const PaymentIntentParam2ThreeDSecureAresTransStatus a = PaymentIntentParam2ThreeDSecureAresTransStatus._('A');

static const PaymentIntentParam2ThreeDSecureAresTransStatus c = PaymentIntentParam2ThreeDSecureAresTransStatus._('C');

static const PaymentIntentParam2ThreeDSecureAresTransStatus i = PaymentIntentParam2ThreeDSecureAresTransStatus._('I');

static const PaymentIntentParam2ThreeDSecureAresTransStatus n = PaymentIntentParam2ThreeDSecureAresTransStatus._('N');

static const PaymentIntentParam2ThreeDSecureAresTransStatus r = PaymentIntentParam2ThreeDSecureAresTransStatus._('R');

static const PaymentIntentParam2ThreeDSecureAresTransStatus u = PaymentIntentParam2ThreeDSecureAresTransStatus._('U');

static const PaymentIntentParam2ThreeDSecureAresTransStatus y = PaymentIntentParam2ThreeDSecureAresTransStatus._('Y');

static const List<PaymentIntentParam2ThreeDSecureAresTransStatus> values = [a, c, i, n, r, u, y];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentParam2ThreeDSecureAresTransStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentParam2ThreeDSecureAresTransStatus($value)'; } 
 }
@immutable final class PaymentIntentParam2ThreeDSecureElectronicCommerceIndicator {const PaymentIntentParam2ThreeDSecureElectronicCommerceIndicator._(this.value);

factory PaymentIntentParam2ThreeDSecureElectronicCommerceIndicator.fromJson(String json) { return switch (json) {
  '01' => $01,
  '02' => $02,
  '05' => $05,
  '06' => $06,
  '07' => $07,
  _ => PaymentIntentParam2ThreeDSecureElectronicCommerceIndicator._(json),
}; }

static const PaymentIntentParam2ThreeDSecureElectronicCommerceIndicator $01 = PaymentIntentParam2ThreeDSecureElectronicCommerceIndicator._('01');

static const PaymentIntentParam2ThreeDSecureElectronicCommerceIndicator $02 = PaymentIntentParam2ThreeDSecureElectronicCommerceIndicator._('02');

static const PaymentIntentParam2ThreeDSecureElectronicCommerceIndicator $05 = PaymentIntentParam2ThreeDSecureElectronicCommerceIndicator._('05');

static const PaymentIntentParam2ThreeDSecureElectronicCommerceIndicator $06 = PaymentIntentParam2ThreeDSecureElectronicCommerceIndicator._('06');

static const PaymentIntentParam2ThreeDSecureElectronicCommerceIndicator $07 = PaymentIntentParam2ThreeDSecureElectronicCommerceIndicator._('07');

static const List<PaymentIntentParam2ThreeDSecureElectronicCommerceIndicator> values = [$01, $02, $05, $06, $07];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentParam2ThreeDSecureElectronicCommerceIndicator && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentParam2ThreeDSecureElectronicCommerceIndicator($value)'; } 
 }
@immutable final class PaymentIntentParam2ThreeDSecureExemptionIndicator {const PaymentIntentParam2ThreeDSecureExemptionIndicator._(this.value);

factory PaymentIntentParam2ThreeDSecureExemptionIndicator.fromJson(String json) { return switch (json) {
  'low_risk' => lowRisk,
  'none' => none,
  _ => PaymentIntentParam2ThreeDSecureExemptionIndicator._(json),
}; }

static const PaymentIntentParam2ThreeDSecureExemptionIndicator lowRisk = PaymentIntentParam2ThreeDSecureExemptionIndicator._('low_risk');

static const PaymentIntentParam2ThreeDSecureExemptionIndicator none = PaymentIntentParam2ThreeDSecureExemptionIndicator._('none');

static const List<PaymentIntentParam2ThreeDSecureExemptionIndicator> values = [lowRisk, none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentParam2ThreeDSecureExemptionIndicator && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentParam2ThreeDSecureExemptionIndicator($value)'; } 
 }
@immutable final class PaymentIntentParam2ThreeDSecureVersion {const PaymentIntentParam2ThreeDSecureVersion._(this.value);

factory PaymentIntentParam2ThreeDSecureVersion.fromJson(String json) { return switch (json) {
  '1.0.2' => $102,
  '2.1.0' => $210,
  '2.2.0' => $220,
  '2.3.0' => $230,
  '2.3.1' => $231,
  _ => PaymentIntentParam2ThreeDSecureVersion._(json),
}; }

static const PaymentIntentParam2ThreeDSecureVersion $102 = PaymentIntentParam2ThreeDSecureVersion._('1.0.2');

static const PaymentIntentParam2ThreeDSecureVersion $210 = PaymentIntentParam2ThreeDSecureVersion._('2.1.0');

static const PaymentIntentParam2ThreeDSecureVersion $220 = PaymentIntentParam2ThreeDSecureVersion._('2.2.0');

static const PaymentIntentParam2ThreeDSecureVersion $230 = PaymentIntentParam2ThreeDSecureVersion._('2.3.0');

static const PaymentIntentParam2ThreeDSecureVersion $231 = PaymentIntentParam2ThreeDSecureVersion._('2.3.1');

static const List<PaymentIntentParam2ThreeDSecureVersion> values = [$102, $210, $220, $230, $231];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentParam2ThreeDSecureVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentParam2ThreeDSecureVersion($value)'; } 
 }
@immutable final class PaymentIntentParam2ThreeDSecure {const PaymentIntentParam2ThreeDSecure({required this.cryptogram, required this.transactionId, required this.version, this.aresTransStatus, this.electronicCommerceIndicator, this.exemptionIndicator, this.networkOptions, this.requestorChallengeIndicator, });

factory PaymentIntentParam2ThreeDSecure.fromJson(Map<String, dynamic> json) { return PaymentIntentParam2ThreeDSecure(
  aresTransStatus: json['ares_trans_status'] != null ? PaymentIntentParam2ThreeDSecureAresTransStatus.fromJson(json['ares_trans_status'] as String) : null,
  cryptogram: json['cryptogram'] as String,
  electronicCommerceIndicator: json['electronic_commerce_indicator'] != null ? PaymentIntentParam2ThreeDSecureElectronicCommerceIndicator.fromJson(json['electronic_commerce_indicator'] as String) : null,
  exemptionIndicator: json['exemption_indicator'] != null ? PaymentIntentParam2ThreeDSecureExemptionIndicator.fromJson(json['exemption_indicator'] as String) : null,
  networkOptions: json['network_options'] != null ? PaymentIntentParam2ThreeDSecureNetworkOptions.fromJson(json['network_options'] as Map<String, dynamic>) : null,
  requestorChallengeIndicator: json['requestor_challenge_indicator'] as String?,
  transactionId: json['transaction_id'] as String,
  version: PaymentIntentParam2ThreeDSecureVersion.fromJson(json['version'] as String),
); }

final PaymentIntentParam2ThreeDSecureAresTransStatus? aresTransStatus;

final String cryptogram;

final PaymentIntentParam2ThreeDSecureElectronicCommerceIndicator? electronicCommerceIndicator;

final PaymentIntentParam2ThreeDSecureExemptionIndicator? exemptionIndicator;

final PaymentIntentParam2ThreeDSecureNetworkOptions? networkOptions;

final String? requestorChallengeIndicator;

final String transactionId;

final PaymentIntentParam2ThreeDSecureVersion version;

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
PaymentIntentParam2ThreeDSecure copyWith({PaymentIntentParam2ThreeDSecureAresTransStatus Function()? aresTransStatus, String? cryptogram, PaymentIntentParam2ThreeDSecureElectronicCommerceIndicator Function()? electronicCommerceIndicator, PaymentIntentParam2ThreeDSecureExemptionIndicator Function()? exemptionIndicator, PaymentIntentParam2ThreeDSecureNetworkOptions Function()? networkOptions, String Function()? requestorChallengeIndicator, String? transactionId, PaymentIntentParam2ThreeDSecureVersion? version, }) { return PaymentIntentParam2ThreeDSecure(
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
      other is PaymentIntentParam2ThreeDSecure &&
          aresTransStatus == other.aresTransStatus &&
          cryptogram == other.cryptogram &&
          electronicCommerceIndicator == other.electronicCommerceIndicator &&
          exemptionIndicator == other.exemptionIndicator &&
          networkOptions == other.networkOptions &&
          requestorChallengeIndicator == other.requestorChallengeIndicator &&
          transactionId == other.transactionId &&
          version == other.version; } 
@override int get hashCode { return Object.hash(aresTransStatus, cryptogram, electronicCommerceIndicator, exemptionIndicator, networkOptions, requestorChallengeIndicator, transactionId, version); } 
@override String toString() { return 'PaymentIntentParam2ThreeDSecure(aresTransStatus: $aresTransStatus, cryptogram: $cryptogram, electronicCommerceIndicator: $electronicCommerceIndicator, exemptionIndicator: $exemptionIndicator, networkOptions: $networkOptions, requestorChallengeIndicator: $requestorChallengeIndicator, transactionId: $transactionId, version: $version)'; } 
 }
