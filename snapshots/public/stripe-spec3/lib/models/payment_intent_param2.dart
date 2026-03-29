// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_param2_installments.dart';import 'payment_intent_param2_mandate_options.dart';import 'payment_intent_param2_statement_descriptor_suffix_kana.dart';import 'payment_intent_param2_statement_descriptor_suffix_kanji.dart';import 'payment_intent_param2_three_d_secure.dart';final class PaymentIntentParam2CaptureMethod {const PaymentIntentParam2CaptureMethod._(this.value);

factory PaymentIntentParam2CaptureMethod.fromJson(String json) { return switch (json) {
  '' => $empty,
  'manual' => manual,
  _ => PaymentIntentParam2CaptureMethod._(json),
}; }

static const PaymentIntentParam2CaptureMethod $empty = PaymentIntentParam2CaptureMethod._('');

static const PaymentIntentParam2CaptureMethod manual = PaymentIntentParam2CaptureMethod._('manual');

static const List<PaymentIntentParam2CaptureMethod> values = [$empty, manual];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentParam2CaptureMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentParam2CaptureMethod($value)'; } 
 }
final class PaymentIntentParam2Network {const PaymentIntentParam2Network._(this.value);

factory PaymentIntentParam2Network.fromJson(String json) { return switch (json) {
  'amex' => amex,
  'cartes_bancaires' => cartesBancaires,
  'diners' => diners,
  'discover' => discover,
  'eftpos_au' => eftposAu,
  'girocard' => girocard,
  'interac' => interac,
  'jcb' => jcb,
  'link' => link,
  'mastercard' => mastercard,
  'unionpay' => unionpay,
  'unknown' => unknown,
  'visa' => visa,
  _ => PaymentIntentParam2Network._(json),
}; }

static const PaymentIntentParam2Network amex = PaymentIntentParam2Network._('amex');

static const PaymentIntentParam2Network cartesBancaires = PaymentIntentParam2Network._('cartes_bancaires');

static const PaymentIntentParam2Network diners = PaymentIntentParam2Network._('diners');

static const PaymentIntentParam2Network discover = PaymentIntentParam2Network._('discover');

static const PaymentIntentParam2Network eftposAu = PaymentIntentParam2Network._('eftpos_au');

static const PaymentIntentParam2Network girocard = PaymentIntentParam2Network._('girocard');

static const PaymentIntentParam2Network interac = PaymentIntentParam2Network._('interac');

static const PaymentIntentParam2Network jcb = PaymentIntentParam2Network._('jcb');

static const PaymentIntentParam2Network link = PaymentIntentParam2Network._('link');

static const PaymentIntentParam2Network mastercard = PaymentIntentParam2Network._('mastercard');

static const PaymentIntentParam2Network unionpay = PaymentIntentParam2Network._('unionpay');

static const PaymentIntentParam2Network unknown = PaymentIntentParam2Network._('unknown');

static const PaymentIntentParam2Network visa = PaymentIntentParam2Network._('visa');

static const List<PaymentIntentParam2Network> values = [amex, cartesBancaires, diners, discover, eftposAu, girocard, interac, jcb, link, mastercard, unionpay, unknown, visa];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentParam2Network && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentParam2Network($value)'; } 
 }
final class PaymentIntentParam2RequestExtendedAuthorization {const PaymentIntentParam2RequestExtendedAuthorization._(this.value);

factory PaymentIntentParam2RequestExtendedAuthorization.fromJson(String json) { return switch (json) {
  'if_available' => ifAvailable,
  'never' => never,
  _ => PaymentIntentParam2RequestExtendedAuthorization._(json),
}; }

static const PaymentIntentParam2RequestExtendedAuthorization ifAvailable = PaymentIntentParam2RequestExtendedAuthorization._('if_available');

static const PaymentIntentParam2RequestExtendedAuthorization never = PaymentIntentParam2RequestExtendedAuthorization._('never');

static const List<PaymentIntentParam2RequestExtendedAuthorization> values = [ifAvailable, never];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentParam2RequestExtendedAuthorization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentParam2RequestExtendedAuthorization($value)'; } 
 }
final class PaymentIntentParam2RequestIncrementalAuthorization {const PaymentIntentParam2RequestIncrementalAuthorization._(this.value);

factory PaymentIntentParam2RequestIncrementalAuthorization.fromJson(String json) { return switch (json) {
  'if_available' => ifAvailable,
  'never' => never,
  _ => PaymentIntentParam2RequestIncrementalAuthorization._(json),
}; }

static const PaymentIntentParam2RequestIncrementalAuthorization ifAvailable = PaymentIntentParam2RequestIncrementalAuthorization._('if_available');

static const PaymentIntentParam2RequestIncrementalAuthorization never = PaymentIntentParam2RequestIncrementalAuthorization._('never');

static const List<PaymentIntentParam2RequestIncrementalAuthorization> values = [ifAvailable, never];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentParam2RequestIncrementalAuthorization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentParam2RequestIncrementalAuthorization($value)'; } 
 }
final class PaymentIntentParam2RequestMulticapture {const PaymentIntentParam2RequestMulticapture._(this.value);

factory PaymentIntentParam2RequestMulticapture.fromJson(String json) { return switch (json) {
  'if_available' => ifAvailable,
  'never' => never,
  _ => PaymentIntentParam2RequestMulticapture._(json),
}; }

static const PaymentIntentParam2RequestMulticapture ifAvailable = PaymentIntentParam2RequestMulticapture._('if_available');

static const PaymentIntentParam2RequestMulticapture never = PaymentIntentParam2RequestMulticapture._('never');

static const List<PaymentIntentParam2RequestMulticapture> values = [ifAvailable, never];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentParam2RequestMulticapture && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentParam2RequestMulticapture($value)'; } 
 }
final class PaymentIntentParam2RequestOvercapture {const PaymentIntentParam2RequestOvercapture._(this.value);

factory PaymentIntentParam2RequestOvercapture.fromJson(String json) { return switch (json) {
  'if_available' => ifAvailable,
  'never' => never,
  _ => PaymentIntentParam2RequestOvercapture._(json),
}; }

static const PaymentIntentParam2RequestOvercapture ifAvailable = PaymentIntentParam2RequestOvercapture._('if_available');

static const PaymentIntentParam2RequestOvercapture never = PaymentIntentParam2RequestOvercapture._('never');

static const List<PaymentIntentParam2RequestOvercapture> values = [ifAvailable, never];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentParam2RequestOvercapture && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentParam2RequestOvercapture($value)'; } 
 }
final class PaymentIntentParam2RequestThreeDSecure {const PaymentIntentParam2RequestThreeDSecure._(this.value);

factory PaymentIntentParam2RequestThreeDSecure.fromJson(String json) { return switch (json) {
  'any' => any,
  'automatic' => automatic,
  'challenge' => challenge,
  _ => PaymentIntentParam2RequestThreeDSecure._(json),
}; }

static const PaymentIntentParam2RequestThreeDSecure any = PaymentIntentParam2RequestThreeDSecure._('any');

static const PaymentIntentParam2RequestThreeDSecure automatic = PaymentIntentParam2RequestThreeDSecure._('automatic');

static const PaymentIntentParam2RequestThreeDSecure challenge = PaymentIntentParam2RequestThreeDSecure._('challenge');

static const List<PaymentIntentParam2RequestThreeDSecure> values = [any, automatic, challenge];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentParam2RequestThreeDSecure && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentParam2RequestThreeDSecure($value)'; } 
 }
final class PaymentIntentParam2SetupFutureUsage {const PaymentIntentParam2SetupFutureUsage._(this.value);

factory PaymentIntentParam2SetupFutureUsage.fromJson(String json) { return switch (json) {
  '' => $empty,
  'none' => none,
  'off_session' => offSession,
  'on_session' => onSession,
  _ => PaymentIntentParam2SetupFutureUsage._(json),
}; }

static const PaymentIntentParam2SetupFutureUsage $empty = PaymentIntentParam2SetupFutureUsage._('');

static const PaymentIntentParam2SetupFutureUsage none = PaymentIntentParam2SetupFutureUsage._('none');

static const PaymentIntentParam2SetupFutureUsage offSession = PaymentIntentParam2SetupFutureUsage._('off_session');

static const PaymentIntentParam2SetupFutureUsage onSession = PaymentIntentParam2SetupFutureUsage._('on_session');

static const List<PaymentIntentParam2SetupFutureUsage> values = [$empty, none, offSession, onSession];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentParam2SetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentParam2SetupFutureUsage($value)'; } 
 }
final class PaymentIntentParam2 {const PaymentIntentParam2({this.captureMethod, this.cvcToken, this.installments, this.mandateOptions, this.network, this.requestExtendedAuthorization, this.requestIncrementalAuthorization, this.requestMulticapture, this.requestOvercapture, this.requestThreeDSecure, this.requireCvcRecollection, this.setupFutureUsage, this.statementDescriptorSuffixKana, this.statementDescriptorSuffixKanji, this.threeDSecure, });

factory PaymentIntentParam2.fromJson(Map<String, dynamic> json) { return PaymentIntentParam2(
  captureMethod: json['capture_method'] != null ? PaymentIntentParam2CaptureMethod.fromJson(json['capture_method'] as String) : null,
  cvcToken: json['cvc_token'] as String?,
  installments: json['installments'] != null ? PaymentIntentParam2Installments.fromJson(json['installments'] as Map<String, dynamic>) : null,
  mandateOptions: json['mandate_options'] != null ? PaymentIntentParam2MandateOptions.fromJson(json['mandate_options'] as Map<String, dynamic>) : null,
  network: json['network'] != null ? PaymentIntentParam2Network.fromJson(json['network'] as String) : null,
  requestExtendedAuthorization: json['request_extended_authorization'] != null ? PaymentIntentParam2RequestExtendedAuthorization.fromJson(json['request_extended_authorization'] as String) : null,
  requestIncrementalAuthorization: json['request_incremental_authorization'] != null ? PaymentIntentParam2RequestIncrementalAuthorization.fromJson(json['request_incremental_authorization'] as String) : null,
  requestMulticapture: json['request_multicapture'] != null ? PaymentIntentParam2RequestMulticapture.fromJson(json['request_multicapture'] as String) : null,
  requestOvercapture: json['request_overcapture'] != null ? PaymentIntentParam2RequestOvercapture.fromJson(json['request_overcapture'] as String) : null,
  requestThreeDSecure: json['request_three_d_secure'] != null ? PaymentIntentParam2RequestThreeDSecure.fromJson(json['request_three_d_secure'] as String) : null,
  requireCvcRecollection: json['require_cvc_recollection'] as bool?,
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentIntentParam2SetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
  statementDescriptorSuffixKana: json['statement_descriptor_suffix_kana'] != null ? OneOf2.parse(json['statement_descriptor_suffix_kana'], fromA: (v) => v as String, fromB: (v) => PaymentIntentParam2StatementDescriptorSuffixKanaVariant2.fromJson(v as String),) : null,
  statementDescriptorSuffixKanji: json['statement_descriptor_suffix_kanji'] != null ? OneOf2.parse(json['statement_descriptor_suffix_kanji'], fromA: (v) => v as String, fromB: (v) => PaymentIntentParam2StatementDescriptorSuffixKanjiVariant2.fromJson(v as String),) : null,
  threeDSecure: json['three_d_secure'] != null ? PaymentIntentParam2ThreeDSecure.fromJson(json['three_d_secure'] as Map<String, dynamic>) : null,
); }

final PaymentIntentParam2CaptureMethod? captureMethod;

final String? cvcToken;

final PaymentIntentParam2Installments? installments;

final PaymentIntentParam2MandateOptions? mandateOptions;

final PaymentIntentParam2Network? network;

final PaymentIntentParam2RequestExtendedAuthorization? requestExtendedAuthorization;

final PaymentIntentParam2RequestIncrementalAuthorization? requestIncrementalAuthorization;

final PaymentIntentParam2RequestMulticapture? requestMulticapture;

final PaymentIntentParam2RequestOvercapture? requestOvercapture;

final PaymentIntentParam2RequestThreeDSecure? requestThreeDSecure;

final bool? requireCvcRecollection;

final PaymentIntentParam2SetupFutureUsage? setupFutureUsage;

final PaymentIntentParam2StatementDescriptorSuffixKana? statementDescriptorSuffixKana;

final PaymentIntentParam2StatementDescriptorSuffixKanji? statementDescriptorSuffixKanji;

final PaymentIntentParam2ThreeDSecure? threeDSecure;

Map<String, dynamic> toJson() { return {
  if (captureMethod != null) 'capture_method': captureMethod?.toJson(),
  'cvc_token': ?cvcToken,
  if (installments != null) 'installments': installments?.toJson(),
  if (mandateOptions != null) 'mandate_options': mandateOptions?.toJson(),
  if (network != null) 'network': network?.toJson(),
  if (requestExtendedAuthorization != null) 'request_extended_authorization': requestExtendedAuthorization?.toJson(),
  if (requestIncrementalAuthorization != null) 'request_incremental_authorization': requestIncrementalAuthorization?.toJson(),
  if (requestMulticapture != null) 'request_multicapture': requestMulticapture?.toJson(),
  if (requestOvercapture != null) 'request_overcapture': requestOvercapture?.toJson(),
  if (requestThreeDSecure != null) 'request_three_d_secure': requestThreeDSecure?.toJson(),
  'require_cvc_recollection': ?requireCvcRecollection,
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
  if (statementDescriptorSuffixKana != null) 'statement_descriptor_suffix_kana': statementDescriptorSuffixKana?.toJson(),
  if (statementDescriptorSuffixKanji != null) 'statement_descriptor_suffix_kanji': statementDescriptorSuffixKanji?.toJson(),
  if (threeDSecure != null) 'three_d_secure': threeDSecure?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PaymentIntentParam2 copyWith({PaymentIntentParam2CaptureMethod Function()? captureMethod, String Function()? cvcToken, PaymentIntentParam2Installments Function()? installments, PaymentIntentParam2MandateOptions Function()? mandateOptions, PaymentIntentParam2Network Function()? network, PaymentIntentParam2RequestExtendedAuthorization Function()? requestExtendedAuthorization, PaymentIntentParam2RequestIncrementalAuthorization Function()? requestIncrementalAuthorization, PaymentIntentParam2RequestMulticapture Function()? requestMulticapture, PaymentIntentParam2RequestOvercapture Function()? requestOvercapture, PaymentIntentParam2RequestThreeDSecure Function()? requestThreeDSecure, bool Function()? requireCvcRecollection, PaymentIntentParam2SetupFutureUsage Function()? setupFutureUsage, PaymentIntentParam2StatementDescriptorSuffixKana Function()? statementDescriptorSuffixKana, PaymentIntentParam2StatementDescriptorSuffixKanji Function()? statementDescriptorSuffixKanji, PaymentIntentParam2ThreeDSecure Function()? threeDSecure, }) { return PaymentIntentParam2(
  captureMethod: captureMethod != null ? captureMethod() : this.captureMethod,
  cvcToken: cvcToken != null ? cvcToken() : this.cvcToken,
  installments: installments != null ? installments() : this.installments,
  mandateOptions: mandateOptions != null ? mandateOptions() : this.mandateOptions,
  network: network != null ? network() : this.network,
  requestExtendedAuthorization: requestExtendedAuthorization != null ? requestExtendedAuthorization() : this.requestExtendedAuthorization,
  requestIncrementalAuthorization: requestIncrementalAuthorization != null ? requestIncrementalAuthorization() : this.requestIncrementalAuthorization,
  requestMulticapture: requestMulticapture != null ? requestMulticapture() : this.requestMulticapture,
  requestOvercapture: requestOvercapture != null ? requestOvercapture() : this.requestOvercapture,
  requestThreeDSecure: requestThreeDSecure != null ? requestThreeDSecure() : this.requestThreeDSecure,
  requireCvcRecollection: requireCvcRecollection != null ? requireCvcRecollection() : this.requireCvcRecollection,
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
  statementDescriptorSuffixKana: statementDescriptorSuffixKana != null ? statementDescriptorSuffixKana() : this.statementDescriptorSuffixKana,
  statementDescriptorSuffixKanji: statementDescriptorSuffixKanji != null ? statementDescriptorSuffixKanji() : this.statementDescriptorSuffixKanji,
  threeDSecure: threeDSecure != null ? threeDSecure() : this.threeDSecure,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentIntentParam2 &&
          captureMethod == other.captureMethod &&
          cvcToken == other.cvcToken &&
          installments == other.installments &&
          mandateOptions == other.mandateOptions &&
          network == other.network &&
          requestExtendedAuthorization == other.requestExtendedAuthorization &&
          requestIncrementalAuthorization == other.requestIncrementalAuthorization &&
          requestMulticapture == other.requestMulticapture &&
          requestOvercapture == other.requestOvercapture &&
          requestThreeDSecure == other.requestThreeDSecure &&
          requireCvcRecollection == other.requireCvcRecollection &&
          setupFutureUsage == other.setupFutureUsage &&
          statementDescriptorSuffixKana == other.statementDescriptorSuffixKana &&
          statementDescriptorSuffixKanji == other.statementDescriptorSuffixKanji &&
          threeDSecure == other.threeDSecure; } 
@override int get hashCode { return Object.hash(captureMethod, cvcToken, installments, mandateOptions, network, requestExtendedAuthorization, requestIncrementalAuthorization, requestMulticapture, requestOvercapture, requestThreeDSecure, requireCvcRecollection, setupFutureUsage, statementDescriptorSuffixKana, statementDescriptorSuffixKanji, threeDSecure); } 
@override String toString() { return 'PaymentIntentParam2(captureMethod: $captureMethod, cvcToken: $cvcToken, installments: $installments, mandateOptions: $mandateOptions, network: $network, requestExtendedAuthorization: $requestExtendedAuthorization, requestIncrementalAuthorization: $requestIncrementalAuthorization, requestMulticapture: $requestMulticapture, requestOvercapture: $requestOvercapture, requestThreeDSecure: $requestThreeDSecure, requireCvcRecollection: $requireCvcRecollection, setupFutureUsage: $setupFutureUsage, statementDescriptorSuffixKana: $statementDescriptorSuffixKana, statementDescriptorSuffixKanji: $statementDescriptorSuffixKanji, threeDSecure: $threeDSecure)'; } 
 }
