// GENERATED CODE - DO NOT MODIFY BY HAND

import 'subscription_payment_method_options_param3_mandate_options.dart';final class SubscriptionPaymentMethodOptionsParam3Network {const SubscriptionPaymentMethodOptionsParam3Network._(this.value);

factory SubscriptionPaymentMethodOptionsParam3Network.fromJson(String json) { return switch (json) {
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
  _ => SubscriptionPaymentMethodOptionsParam3Network._(json),
}; }

static const SubscriptionPaymentMethodOptionsParam3Network amex = SubscriptionPaymentMethodOptionsParam3Network._('amex');

static const SubscriptionPaymentMethodOptionsParam3Network cartesBancaires = SubscriptionPaymentMethodOptionsParam3Network._('cartes_bancaires');

static const SubscriptionPaymentMethodOptionsParam3Network diners = SubscriptionPaymentMethodOptionsParam3Network._('diners');

static const SubscriptionPaymentMethodOptionsParam3Network discover = SubscriptionPaymentMethodOptionsParam3Network._('discover');

static const SubscriptionPaymentMethodOptionsParam3Network eftposAu = SubscriptionPaymentMethodOptionsParam3Network._('eftpos_au');

static const SubscriptionPaymentMethodOptionsParam3Network girocard = SubscriptionPaymentMethodOptionsParam3Network._('girocard');

static const SubscriptionPaymentMethodOptionsParam3Network interac = SubscriptionPaymentMethodOptionsParam3Network._('interac');

static const SubscriptionPaymentMethodOptionsParam3Network jcb = SubscriptionPaymentMethodOptionsParam3Network._('jcb');

static const SubscriptionPaymentMethodOptionsParam3Network link = SubscriptionPaymentMethodOptionsParam3Network._('link');

static const SubscriptionPaymentMethodOptionsParam3Network mastercard = SubscriptionPaymentMethodOptionsParam3Network._('mastercard');

static const SubscriptionPaymentMethodOptionsParam3Network unionpay = SubscriptionPaymentMethodOptionsParam3Network._('unionpay');

static const SubscriptionPaymentMethodOptionsParam3Network unknown = SubscriptionPaymentMethodOptionsParam3Network._('unknown');

static const SubscriptionPaymentMethodOptionsParam3Network visa = SubscriptionPaymentMethodOptionsParam3Network._('visa');

static const List<SubscriptionPaymentMethodOptionsParam3Network> values = [amex, cartesBancaires, diners, discover, eftposAu, girocard, interac, jcb, link, mastercard, unionpay, unknown, visa];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SubscriptionPaymentMethodOptionsParam3Network && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SubscriptionPaymentMethodOptionsParam3Network($value)'; } 
 }
final class SubscriptionPaymentMethodOptionsParam3RequestThreeDSecure {const SubscriptionPaymentMethodOptionsParam3RequestThreeDSecure._(this.value);

factory SubscriptionPaymentMethodOptionsParam3RequestThreeDSecure.fromJson(String json) { return switch (json) {
  'any' => any,
  'automatic' => automatic,
  'challenge' => challenge,
  _ => SubscriptionPaymentMethodOptionsParam3RequestThreeDSecure._(json),
}; }

static const SubscriptionPaymentMethodOptionsParam3RequestThreeDSecure any = SubscriptionPaymentMethodOptionsParam3RequestThreeDSecure._('any');

static const SubscriptionPaymentMethodOptionsParam3RequestThreeDSecure automatic = SubscriptionPaymentMethodOptionsParam3RequestThreeDSecure._('automatic');

static const SubscriptionPaymentMethodOptionsParam3RequestThreeDSecure challenge = SubscriptionPaymentMethodOptionsParam3RequestThreeDSecure._('challenge');

static const List<SubscriptionPaymentMethodOptionsParam3RequestThreeDSecure> values = [any, automatic, challenge];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SubscriptionPaymentMethodOptionsParam3RequestThreeDSecure && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SubscriptionPaymentMethodOptionsParam3RequestThreeDSecure($value)'; } 
 }
final class SubscriptionPaymentMethodOptionsParam3 {const SubscriptionPaymentMethodOptionsParam3({this.mandateOptions, this.network, this.requestThreeDSecure, });

factory SubscriptionPaymentMethodOptionsParam3.fromJson(Map<String, dynamic> json) { return SubscriptionPaymentMethodOptionsParam3(
  mandateOptions: json['mandate_options'] != null ? SubscriptionPaymentMethodOptionsParam3MandateOptions.fromJson(json['mandate_options'] as Map<String, dynamic>) : null,
  network: json['network'] != null ? SubscriptionPaymentMethodOptionsParam3Network.fromJson(json['network'] as String) : null,
  requestThreeDSecure: json['request_three_d_secure'] != null ? SubscriptionPaymentMethodOptionsParam3RequestThreeDSecure.fromJson(json['request_three_d_secure'] as String) : null,
); }

final SubscriptionPaymentMethodOptionsParam3MandateOptions? mandateOptions;

final SubscriptionPaymentMethodOptionsParam3Network? network;

final SubscriptionPaymentMethodOptionsParam3RequestThreeDSecure? requestThreeDSecure;

Map<String, dynamic> toJson() { return {
  if (mandateOptions != null) 'mandate_options': mandateOptions?.toJson(),
  if (network != null) 'network': network?.toJson(),
  if (requestThreeDSecure != null) 'request_three_d_secure': requestThreeDSecure?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'mandate_options', 'network', 'request_three_d_secure'}.contains(key)); } 
SubscriptionPaymentMethodOptionsParam3 copyWith({SubscriptionPaymentMethodOptionsParam3MandateOptions Function()? mandateOptions, SubscriptionPaymentMethodOptionsParam3Network Function()? network, SubscriptionPaymentMethodOptionsParam3RequestThreeDSecure Function()? requestThreeDSecure, }) { return SubscriptionPaymentMethodOptionsParam3(
  mandateOptions: mandateOptions != null ? mandateOptions() : this.mandateOptions,
  network: network != null ? network() : this.network,
  requestThreeDSecure: requestThreeDSecure != null ? requestThreeDSecure() : this.requestThreeDSecure,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SubscriptionPaymentMethodOptionsParam3 &&
          mandateOptions == other.mandateOptions &&
          network == other.network &&
          requestThreeDSecure == other.requestThreeDSecure; } 
@override int get hashCode { return Object.hash(mandateOptions, network, requestThreeDSecure); } 
@override String toString() { return 'SubscriptionPaymentMethodOptionsParam3(mandateOptions: $mandateOptions, network: $network, requestThreeDSecure: $requestThreeDSecure)'; } 
 }
