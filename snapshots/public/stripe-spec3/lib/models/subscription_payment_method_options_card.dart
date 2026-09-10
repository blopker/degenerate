// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_mandate_options_card.dart';/// Selected network to process this Subscription on. Depends on the available networks of the card attached to the Subscription. Can be only set confirm-time.
@immutable final class SubscriptionPaymentMethodOptionsCardNetwork {const SubscriptionPaymentMethodOptionsCardNetwork._(this.value);

factory SubscriptionPaymentMethodOptionsCardNetwork.fromJson(String json) { return switch (json) {
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
  _ => SubscriptionPaymentMethodOptionsCardNetwork._(json),
}; }

static const SubscriptionPaymentMethodOptionsCardNetwork amex = SubscriptionPaymentMethodOptionsCardNetwork._('amex');

static const SubscriptionPaymentMethodOptionsCardNetwork cartesBancaires = SubscriptionPaymentMethodOptionsCardNetwork._('cartes_bancaires');

static const SubscriptionPaymentMethodOptionsCardNetwork diners = SubscriptionPaymentMethodOptionsCardNetwork._('diners');

static const SubscriptionPaymentMethodOptionsCardNetwork discover = SubscriptionPaymentMethodOptionsCardNetwork._('discover');

static const SubscriptionPaymentMethodOptionsCardNetwork eftposAu = SubscriptionPaymentMethodOptionsCardNetwork._('eftpos_au');

static const SubscriptionPaymentMethodOptionsCardNetwork girocard = SubscriptionPaymentMethodOptionsCardNetwork._('girocard');

static const SubscriptionPaymentMethodOptionsCardNetwork interac = SubscriptionPaymentMethodOptionsCardNetwork._('interac');

static const SubscriptionPaymentMethodOptionsCardNetwork jcb = SubscriptionPaymentMethodOptionsCardNetwork._('jcb');

static const SubscriptionPaymentMethodOptionsCardNetwork link = SubscriptionPaymentMethodOptionsCardNetwork._('link');

static const SubscriptionPaymentMethodOptionsCardNetwork mastercard = SubscriptionPaymentMethodOptionsCardNetwork._('mastercard');

static const SubscriptionPaymentMethodOptionsCardNetwork unionpay = SubscriptionPaymentMethodOptionsCardNetwork._('unionpay');

static const SubscriptionPaymentMethodOptionsCardNetwork unknown = SubscriptionPaymentMethodOptionsCardNetwork._('unknown');

static const SubscriptionPaymentMethodOptionsCardNetwork visa = SubscriptionPaymentMethodOptionsCardNetwork._('visa');

static const List<SubscriptionPaymentMethodOptionsCardNetwork> values = [amex, cartesBancaires, diners, discover, eftposAu, girocard, interac, jcb, link, mastercard, unionpay, unknown, visa];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SubscriptionPaymentMethodOptionsCardNetwork && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SubscriptionPaymentMethodOptionsCardNetwork($value)'; } 
 }
/// We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https://docs.stripe.com/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. Read our guide on [manually requesting 3D Secure](https://docs.stripe.com/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
@immutable final class SubscriptionPaymentMethodOptionsCardRequestThreeDSecure {const SubscriptionPaymentMethodOptionsCardRequestThreeDSecure._(this.value);

factory SubscriptionPaymentMethodOptionsCardRequestThreeDSecure.fromJson(String json) { return switch (json) {
  'any' => any,
  'automatic' => automatic,
  'challenge' => challenge,
  _ => SubscriptionPaymentMethodOptionsCardRequestThreeDSecure._(json),
}; }

static const SubscriptionPaymentMethodOptionsCardRequestThreeDSecure any = SubscriptionPaymentMethodOptionsCardRequestThreeDSecure._('any');

static const SubscriptionPaymentMethodOptionsCardRequestThreeDSecure automatic = SubscriptionPaymentMethodOptionsCardRequestThreeDSecure._('automatic');

static const SubscriptionPaymentMethodOptionsCardRequestThreeDSecure challenge = SubscriptionPaymentMethodOptionsCardRequestThreeDSecure._('challenge');

static const List<SubscriptionPaymentMethodOptionsCardRequestThreeDSecure> values = [any, automatic, challenge];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SubscriptionPaymentMethodOptionsCardRequestThreeDSecure && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SubscriptionPaymentMethodOptionsCardRequestThreeDSecure($value)'; } 
 }
/// 
@immutable final class SubscriptionPaymentMethodOptionsCard {const SubscriptionPaymentMethodOptionsCard({this.mandateOptions, this.network = const Omittable.absent(), this.requestThreeDSecure = const Omittable.absent(), });

factory SubscriptionPaymentMethodOptionsCard.fromJson(Map<String, dynamic> json) { return SubscriptionPaymentMethodOptionsCard(
  mandateOptions: json['mandate_options'] != null ? InvoiceMandateOptionsCard.fromJson(json['mandate_options'] as Map<String, dynamic>) : null,
  network: json.containsKey('network') ? Omittable(json['network'] != null ? SubscriptionPaymentMethodOptionsCardNetwork.fromJson(json['network'] as String) : null) : const Omittable.absent(),
  requestThreeDSecure: json.containsKey('request_three_d_secure') ? Omittable(json['request_three_d_secure'] != null ? SubscriptionPaymentMethodOptionsCardRequestThreeDSecure.fromJson(json['request_three_d_secure'] as String) : null) : const Omittable.absent(),
); }

final InvoiceMandateOptionsCard? mandateOptions;

/// Selected network to process this Subscription on. Depends on the available networks of the card attached to the Subscription. Can be only set confirm-time.
final Omittable<SubscriptionPaymentMethodOptionsCardNetwork?> network;

/// We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https://docs.stripe.com/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. Read our guide on [manually requesting 3D Secure](https://docs.stripe.com/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
final Omittable<SubscriptionPaymentMethodOptionsCardRequestThreeDSecure?> requestThreeDSecure;

Map<String, dynamic> toJson() { return {
  if (mandateOptions != null) 'mandate_options': mandateOptions?.toJson(),
  if (network.isPresent) 'network': network.value?.toJson(),
  if (requestThreeDSecure.isPresent) 'request_three_d_secure': requestThreeDSecure.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'mandate_options', 'network', 'request_three_d_secure'}.contains(key)); } 
SubscriptionPaymentMethodOptionsCard copyWith({InvoiceMandateOptionsCard? Function()? mandateOptions, Omittable<SubscriptionPaymentMethodOptionsCardNetwork?>? network, Omittable<SubscriptionPaymentMethodOptionsCardRequestThreeDSecure?>? requestThreeDSecure, }) { return SubscriptionPaymentMethodOptionsCard(
  mandateOptions: mandateOptions != null ? mandateOptions() : this.mandateOptions,
  network: network ?? this.network,
  requestThreeDSecure: requestThreeDSecure ?? this.requestThreeDSecure,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SubscriptionPaymentMethodOptionsCard &&
          mandateOptions == other.mandateOptions &&
          network == other.network &&
          requestThreeDSecure == other.requestThreeDSecure; } 
@override int get hashCode { return Object.hash(mandateOptions, network, requestThreeDSecure); } 
@override String toString() { return 'SubscriptionPaymentMethodOptionsCard(mandateOptions: $mandateOptions, network: $network, requestThreeDSecure: $requestThreeDSecure)'; } 
 }
