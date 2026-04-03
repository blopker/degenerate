// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'subscription_payment_method_options_param4_mandate_options.dart';@immutable final class SubscriptionPaymentMethodOptionsParam4Network {const SubscriptionPaymentMethodOptionsParam4Network._(this.value);

factory SubscriptionPaymentMethodOptionsParam4Network.fromJson(String json) { return switch (json) {
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
  _ => SubscriptionPaymentMethodOptionsParam4Network._(json),
}; }

static const SubscriptionPaymentMethodOptionsParam4Network amex = SubscriptionPaymentMethodOptionsParam4Network._('amex');

static const SubscriptionPaymentMethodOptionsParam4Network cartesBancaires = SubscriptionPaymentMethodOptionsParam4Network._('cartes_bancaires');

static const SubscriptionPaymentMethodOptionsParam4Network diners = SubscriptionPaymentMethodOptionsParam4Network._('diners');

static const SubscriptionPaymentMethodOptionsParam4Network discover = SubscriptionPaymentMethodOptionsParam4Network._('discover');

static const SubscriptionPaymentMethodOptionsParam4Network eftposAu = SubscriptionPaymentMethodOptionsParam4Network._('eftpos_au');

static const SubscriptionPaymentMethodOptionsParam4Network girocard = SubscriptionPaymentMethodOptionsParam4Network._('girocard');

static const SubscriptionPaymentMethodOptionsParam4Network interac = SubscriptionPaymentMethodOptionsParam4Network._('interac');

static const SubscriptionPaymentMethodOptionsParam4Network jcb = SubscriptionPaymentMethodOptionsParam4Network._('jcb');

static const SubscriptionPaymentMethodOptionsParam4Network link = SubscriptionPaymentMethodOptionsParam4Network._('link');

static const SubscriptionPaymentMethodOptionsParam4Network mastercard = SubscriptionPaymentMethodOptionsParam4Network._('mastercard');

static const SubscriptionPaymentMethodOptionsParam4Network unionpay = SubscriptionPaymentMethodOptionsParam4Network._('unionpay');

static const SubscriptionPaymentMethodOptionsParam4Network unknown = SubscriptionPaymentMethodOptionsParam4Network._('unknown');

static const SubscriptionPaymentMethodOptionsParam4Network visa = SubscriptionPaymentMethodOptionsParam4Network._('visa');

static const List<SubscriptionPaymentMethodOptionsParam4Network> values = [amex, cartesBancaires, diners, discover, eftposAu, girocard, interac, jcb, link, mastercard, unionpay, unknown, visa];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SubscriptionPaymentMethodOptionsParam4Network && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SubscriptionPaymentMethodOptionsParam4Network($value)'; } 
 }
@immutable final class SubscriptionPaymentMethodOptionsParam4RequestThreeDSecure {const SubscriptionPaymentMethodOptionsParam4RequestThreeDSecure._(this.value);

factory SubscriptionPaymentMethodOptionsParam4RequestThreeDSecure.fromJson(String json) { return switch (json) {
  'any' => any,
  'automatic' => automatic,
  'challenge' => challenge,
  _ => SubscriptionPaymentMethodOptionsParam4RequestThreeDSecure._(json),
}; }

static const SubscriptionPaymentMethodOptionsParam4RequestThreeDSecure any = SubscriptionPaymentMethodOptionsParam4RequestThreeDSecure._('any');

static const SubscriptionPaymentMethodOptionsParam4RequestThreeDSecure automatic = SubscriptionPaymentMethodOptionsParam4RequestThreeDSecure._('automatic');

static const SubscriptionPaymentMethodOptionsParam4RequestThreeDSecure challenge = SubscriptionPaymentMethodOptionsParam4RequestThreeDSecure._('challenge');

static const List<SubscriptionPaymentMethodOptionsParam4RequestThreeDSecure> values = [any, automatic, challenge];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SubscriptionPaymentMethodOptionsParam4RequestThreeDSecure && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SubscriptionPaymentMethodOptionsParam4RequestThreeDSecure($value)'; } 
 }
@immutable final class SubscriptionPaymentMethodOptionsParam4 {const SubscriptionPaymentMethodOptionsParam4({this.mandateOptions, this.network, this.requestThreeDSecure, });

factory SubscriptionPaymentMethodOptionsParam4.fromJson(Map<String, dynamic> json) { return SubscriptionPaymentMethodOptionsParam4(
  mandateOptions: json['mandate_options'] != null ? SubscriptionPaymentMethodOptionsParam4MandateOptions.fromJson(json['mandate_options'] as Map<String, dynamic>) : null,
  network: json['network'] != null ? SubscriptionPaymentMethodOptionsParam4Network.fromJson(json['network'] as String) : null,
  requestThreeDSecure: json['request_three_d_secure'] != null ? SubscriptionPaymentMethodOptionsParam4RequestThreeDSecure.fromJson(json['request_three_d_secure'] as String) : null,
); }

final SubscriptionPaymentMethodOptionsParam4MandateOptions? mandateOptions;

final SubscriptionPaymentMethodOptionsParam4Network? network;

final SubscriptionPaymentMethodOptionsParam4RequestThreeDSecure? requestThreeDSecure;

Map<String, dynamic> toJson() { return {
  if (mandateOptions != null) 'mandate_options': mandateOptions?.toJson(),
  if (network != null) 'network': network?.toJson(),
  if (requestThreeDSecure != null) 'request_three_d_secure': requestThreeDSecure?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'mandate_options', 'network', 'request_three_d_secure'}.contains(key)); } 
SubscriptionPaymentMethodOptionsParam4 copyWith({SubscriptionPaymentMethodOptionsParam4MandateOptions Function()? mandateOptions, SubscriptionPaymentMethodOptionsParam4Network Function()? network, SubscriptionPaymentMethodOptionsParam4RequestThreeDSecure Function()? requestThreeDSecure, }) { return SubscriptionPaymentMethodOptionsParam4(
  mandateOptions: mandateOptions != null ? mandateOptions() : this.mandateOptions,
  network: network != null ? network() : this.network,
  requestThreeDSecure: requestThreeDSecure != null ? requestThreeDSecure() : this.requestThreeDSecure,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SubscriptionPaymentMethodOptionsParam4 &&
          mandateOptions == other.mandateOptions &&
          network == other.network &&
          requestThreeDSecure == other.requestThreeDSecure; } 
@override int get hashCode { return Object.hash(mandateOptions, network, requestThreeDSecure); } 
@override String toString() { return 'SubscriptionPaymentMethodOptionsParam4(mandateOptions: $mandateOptions, network: $network, requestThreeDSecure: $requestThreeDSecure)'; } 
 }
