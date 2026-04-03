// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_param3_installments.dart';import 'payment_intent_param3_mandate_options.dart';import 'payment_intent_param3_statement_descriptor_suffix_kana.dart';import 'payment_intent_param3_statement_descriptor_suffix_kanji.dart';import 'payment_intent_param3_three_d_secure.dart';@immutable final class PaymentIntentParam3CaptureMethod {const PaymentIntentParam3CaptureMethod._(this.value);

factory PaymentIntentParam3CaptureMethod.fromJson(String json) { return switch (json) {
  '' => $empty,
  'manual' => manual,
  _ => PaymentIntentParam3CaptureMethod._(json),
}; }

static const PaymentIntentParam3CaptureMethod $empty = PaymentIntentParam3CaptureMethod._('');

static const PaymentIntentParam3CaptureMethod manual = PaymentIntentParam3CaptureMethod._('manual');

static const List<PaymentIntentParam3CaptureMethod> values = [$empty, manual];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentParam3CaptureMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentParam3CaptureMethod($value)'; } 
 }
@immutable final class PaymentIntentParam3Network {const PaymentIntentParam3Network._(this.value);

factory PaymentIntentParam3Network.fromJson(String json) { return switch (json) {
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
  _ => PaymentIntentParam3Network._(json),
}; }

static const PaymentIntentParam3Network amex = PaymentIntentParam3Network._('amex');

static const PaymentIntentParam3Network cartesBancaires = PaymentIntentParam3Network._('cartes_bancaires');

static const PaymentIntentParam3Network diners = PaymentIntentParam3Network._('diners');

static const PaymentIntentParam3Network discover = PaymentIntentParam3Network._('discover');

static const PaymentIntentParam3Network eftposAu = PaymentIntentParam3Network._('eftpos_au');

static const PaymentIntentParam3Network girocard = PaymentIntentParam3Network._('girocard');

static const PaymentIntentParam3Network interac = PaymentIntentParam3Network._('interac');

static const PaymentIntentParam3Network jcb = PaymentIntentParam3Network._('jcb');

static const PaymentIntentParam3Network link = PaymentIntentParam3Network._('link');

static const PaymentIntentParam3Network mastercard = PaymentIntentParam3Network._('mastercard');

static const PaymentIntentParam3Network unionpay = PaymentIntentParam3Network._('unionpay');

static const PaymentIntentParam3Network unknown = PaymentIntentParam3Network._('unknown');

static const PaymentIntentParam3Network visa = PaymentIntentParam3Network._('visa');

static const List<PaymentIntentParam3Network> values = [amex, cartesBancaires, diners, discover, eftposAu, girocard, interac, jcb, link, mastercard, unionpay, unknown, visa];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentParam3Network && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentParam3Network($value)'; } 
 }
@immutable final class PaymentIntentParam3RequestExtendedAuthorization {const PaymentIntentParam3RequestExtendedAuthorization._(this.value);

factory PaymentIntentParam3RequestExtendedAuthorization.fromJson(String json) { return switch (json) {
  'if_available' => ifAvailable,
  'never' => never,
  _ => PaymentIntentParam3RequestExtendedAuthorization._(json),
}; }

static const PaymentIntentParam3RequestExtendedAuthorization ifAvailable = PaymentIntentParam3RequestExtendedAuthorization._('if_available');

static const PaymentIntentParam3RequestExtendedAuthorization never = PaymentIntentParam3RequestExtendedAuthorization._('never');

static const List<PaymentIntentParam3RequestExtendedAuthorization> values = [ifAvailable, never];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentParam3RequestExtendedAuthorization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentParam3RequestExtendedAuthorization($value)'; } 
 }
@immutable final class PaymentIntentParam3RequestIncrementalAuthorization {const PaymentIntentParam3RequestIncrementalAuthorization._(this.value);

factory PaymentIntentParam3RequestIncrementalAuthorization.fromJson(String json) { return switch (json) {
  'if_available' => ifAvailable,
  'never' => never,
  _ => PaymentIntentParam3RequestIncrementalAuthorization._(json),
}; }

static const PaymentIntentParam3RequestIncrementalAuthorization ifAvailable = PaymentIntentParam3RequestIncrementalAuthorization._('if_available');

static const PaymentIntentParam3RequestIncrementalAuthorization never = PaymentIntentParam3RequestIncrementalAuthorization._('never');

static const List<PaymentIntentParam3RequestIncrementalAuthorization> values = [ifAvailable, never];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentParam3RequestIncrementalAuthorization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentParam3RequestIncrementalAuthorization($value)'; } 
 }
@immutable final class PaymentIntentParam3RequestMulticapture {const PaymentIntentParam3RequestMulticapture._(this.value);

factory PaymentIntentParam3RequestMulticapture.fromJson(String json) { return switch (json) {
  'if_available' => ifAvailable,
  'never' => never,
  _ => PaymentIntentParam3RequestMulticapture._(json),
}; }

static const PaymentIntentParam3RequestMulticapture ifAvailable = PaymentIntentParam3RequestMulticapture._('if_available');

static const PaymentIntentParam3RequestMulticapture never = PaymentIntentParam3RequestMulticapture._('never');

static const List<PaymentIntentParam3RequestMulticapture> values = [ifAvailable, never];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentParam3RequestMulticapture && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentParam3RequestMulticapture($value)'; } 
 }
@immutable final class PaymentIntentParam3RequestOvercapture {const PaymentIntentParam3RequestOvercapture._(this.value);

factory PaymentIntentParam3RequestOvercapture.fromJson(String json) { return switch (json) {
  'if_available' => ifAvailable,
  'never' => never,
  _ => PaymentIntentParam3RequestOvercapture._(json),
}; }

static const PaymentIntentParam3RequestOvercapture ifAvailable = PaymentIntentParam3RequestOvercapture._('if_available');

static const PaymentIntentParam3RequestOvercapture never = PaymentIntentParam3RequestOvercapture._('never');

static const List<PaymentIntentParam3RequestOvercapture> values = [ifAvailable, never];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentParam3RequestOvercapture && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentParam3RequestOvercapture($value)'; } 
 }
@immutable final class PaymentIntentParam3RequestThreeDSecure {const PaymentIntentParam3RequestThreeDSecure._(this.value);

factory PaymentIntentParam3RequestThreeDSecure.fromJson(String json) { return switch (json) {
  'any' => any,
  'automatic' => automatic,
  'challenge' => challenge,
  _ => PaymentIntentParam3RequestThreeDSecure._(json),
}; }

static const PaymentIntentParam3RequestThreeDSecure any = PaymentIntentParam3RequestThreeDSecure._('any');

static const PaymentIntentParam3RequestThreeDSecure automatic = PaymentIntentParam3RequestThreeDSecure._('automatic');

static const PaymentIntentParam3RequestThreeDSecure challenge = PaymentIntentParam3RequestThreeDSecure._('challenge');

static const List<PaymentIntentParam3RequestThreeDSecure> values = [any, automatic, challenge];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentParam3RequestThreeDSecure && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentParam3RequestThreeDSecure($value)'; } 
 }
@immutable final class PaymentIntentParam3SetupFutureUsage {const PaymentIntentParam3SetupFutureUsage._(this.value);

factory PaymentIntentParam3SetupFutureUsage.fromJson(String json) { return switch (json) {
  '' => $empty,
  'none' => none,
  'off_session' => offSession,
  'on_session' => onSession,
  _ => PaymentIntentParam3SetupFutureUsage._(json),
}; }

static const PaymentIntentParam3SetupFutureUsage $empty = PaymentIntentParam3SetupFutureUsage._('');

static const PaymentIntentParam3SetupFutureUsage none = PaymentIntentParam3SetupFutureUsage._('none');

static const PaymentIntentParam3SetupFutureUsage offSession = PaymentIntentParam3SetupFutureUsage._('off_session');

static const PaymentIntentParam3SetupFutureUsage onSession = PaymentIntentParam3SetupFutureUsage._('on_session');

static const List<PaymentIntentParam3SetupFutureUsage> values = [$empty, none, offSession, onSession];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentParam3SetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentParam3SetupFutureUsage($value)'; } 
 }
@immutable final class PaymentIntentParam3 {const PaymentIntentParam3({this.captureMethod, this.cvcToken, this.installments, this.mandateOptions, this.network, this.requestExtendedAuthorization, this.requestIncrementalAuthorization, this.requestMulticapture, this.requestOvercapture, this.requestThreeDSecure, this.requireCvcRecollection, this.setupFutureUsage, this.statementDescriptorSuffixKana, this.statementDescriptorSuffixKanji, this.threeDSecure, });

factory PaymentIntentParam3.fromJson(Map<String, dynamic> json) { return PaymentIntentParam3(
  captureMethod: json['capture_method'] != null ? PaymentIntentParam3CaptureMethod.fromJson(json['capture_method'] as String) : null,
  cvcToken: json['cvc_token'] as String?,
  installments: json['installments'] != null ? PaymentIntentParam3Installments.fromJson(json['installments'] as Map<String, dynamic>) : null,
  mandateOptions: json['mandate_options'] != null ? PaymentIntentParam3MandateOptions.fromJson(json['mandate_options'] as Map<String, dynamic>) : null,
  network: json['network'] != null ? PaymentIntentParam3Network.fromJson(json['network'] as String) : null,
  requestExtendedAuthorization: json['request_extended_authorization'] != null ? PaymentIntentParam3RequestExtendedAuthorization.fromJson(json['request_extended_authorization'] as String) : null,
  requestIncrementalAuthorization: json['request_incremental_authorization'] != null ? PaymentIntentParam3RequestIncrementalAuthorization.fromJson(json['request_incremental_authorization'] as String) : null,
  requestMulticapture: json['request_multicapture'] != null ? PaymentIntentParam3RequestMulticapture.fromJson(json['request_multicapture'] as String) : null,
  requestOvercapture: json['request_overcapture'] != null ? PaymentIntentParam3RequestOvercapture.fromJson(json['request_overcapture'] as String) : null,
  requestThreeDSecure: json['request_three_d_secure'] != null ? PaymentIntentParam3RequestThreeDSecure.fromJson(json['request_three_d_secure'] as String) : null,
  requireCvcRecollection: json['require_cvc_recollection'] as bool?,
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentIntentParam3SetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
  statementDescriptorSuffixKana: json['statement_descriptor_suffix_kana'] != null ? OneOf2.parse(json['statement_descriptor_suffix_kana'], fromA: (v) => v as String, fromB: (v) => PaymentIntentParam3StatementDescriptorSuffixKanaVariant2.fromJson(v as String),) : null,
  statementDescriptorSuffixKanji: json['statement_descriptor_suffix_kanji'] != null ? OneOf2.parse(json['statement_descriptor_suffix_kanji'], fromA: (v) => v as String, fromB: (v) => PaymentIntentParam3StatementDescriptorSuffixKanjiVariant2.fromJson(v as String),) : null,
  threeDSecure: json['three_d_secure'] != null ? PaymentIntentParam3ThreeDSecure.fromJson(json['three_d_secure'] as Map<String, dynamic>) : null,
); }

final PaymentIntentParam3CaptureMethod? captureMethod;

final String? cvcToken;

final PaymentIntentParam3Installments? installments;

final PaymentIntentParam3MandateOptions? mandateOptions;

final PaymentIntentParam3Network? network;

final PaymentIntentParam3RequestExtendedAuthorization? requestExtendedAuthorization;

final PaymentIntentParam3RequestIncrementalAuthorization? requestIncrementalAuthorization;

final PaymentIntentParam3RequestMulticapture? requestMulticapture;

final PaymentIntentParam3RequestOvercapture? requestOvercapture;

final PaymentIntentParam3RequestThreeDSecure? requestThreeDSecure;

final bool? requireCvcRecollection;

final PaymentIntentParam3SetupFutureUsage? setupFutureUsage;

final PaymentIntentParam3StatementDescriptorSuffixKana? statementDescriptorSuffixKana;

final PaymentIntentParam3StatementDescriptorSuffixKanji? statementDescriptorSuffixKanji;

final PaymentIntentParam3ThreeDSecure? threeDSecure;

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
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'capture_method', 'cvc_token', 'installments', 'mandate_options', 'network', 'request_extended_authorization', 'request_incremental_authorization', 'request_multicapture', 'request_overcapture', 'request_three_d_secure', 'require_cvc_recollection', 'setup_future_usage', 'statement_descriptor_suffix_kana', 'statement_descriptor_suffix_kanji', 'three_d_secure'}.contains(key)); } 
PaymentIntentParam3 copyWith({PaymentIntentParam3CaptureMethod Function()? captureMethod, String Function()? cvcToken, PaymentIntentParam3Installments Function()? installments, PaymentIntentParam3MandateOptions Function()? mandateOptions, PaymentIntentParam3Network Function()? network, PaymentIntentParam3RequestExtendedAuthorization Function()? requestExtendedAuthorization, PaymentIntentParam3RequestIncrementalAuthorization Function()? requestIncrementalAuthorization, PaymentIntentParam3RequestMulticapture Function()? requestMulticapture, PaymentIntentParam3RequestOvercapture Function()? requestOvercapture, PaymentIntentParam3RequestThreeDSecure Function()? requestThreeDSecure, bool Function()? requireCvcRecollection, PaymentIntentParam3SetupFutureUsage Function()? setupFutureUsage, PaymentIntentParam3StatementDescriptorSuffixKana Function()? statementDescriptorSuffixKana, PaymentIntentParam3StatementDescriptorSuffixKanji Function()? statementDescriptorSuffixKanji, PaymentIntentParam3ThreeDSecure Function()? threeDSecure, }) { return PaymentIntentParam3(
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
      other is PaymentIntentParam3 &&
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
@override String toString() { return 'PaymentIntentParam3(captureMethod: $captureMethod, cvcToken: $cvcToken, installments: $installments, mandateOptions: $mandateOptions, network: $network, requestExtendedAuthorization: $requestExtendedAuthorization, requestIncrementalAuthorization: $requestIncrementalAuthorization, requestMulticapture: $requestMulticapture, requestOvercapture: $requestOvercapture, requestThreeDSecure: $requestThreeDSecure, requireCvcRecollection: $requireCvcRecollection, setupFutureUsage: $setupFutureUsage, statementDescriptorSuffixKana: $statementDescriptorSuffixKana, statementDescriptorSuffixKanji: $statementDescriptorSuffixKanji, threeDSecure: $threeDSecure)'; } 
 }
