// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'setup_intent_payment_method_options_card_mandate_options.dart';/// Selected network to process this SetupIntent on. Depends on the available networks of the card attached to the setup intent. Can be only set confirm-time.
@immutable final class SetupIntentPaymentMethodOptionsCardNetwork {const SetupIntentPaymentMethodOptionsCardNetwork._(this.value);

factory SetupIntentPaymentMethodOptionsCardNetwork.fromJson(String json) { return switch (json) {
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
  _ => SetupIntentPaymentMethodOptionsCardNetwork._(json),
}; }

static const SetupIntentPaymentMethodOptionsCardNetwork amex = SetupIntentPaymentMethodOptionsCardNetwork._('amex');

static const SetupIntentPaymentMethodOptionsCardNetwork cartesBancaires = SetupIntentPaymentMethodOptionsCardNetwork._('cartes_bancaires');

static const SetupIntentPaymentMethodOptionsCardNetwork diners = SetupIntentPaymentMethodOptionsCardNetwork._('diners');

static const SetupIntentPaymentMethodOptionsCardNetwork discover = SetupIntentPaymentMethodOptionsCardNetwork._('discover');

static const SetupIntentPaymentMethodOptionsCardNetwork eftposAu = SetupIntentPaymentMethodOptionsCardNetwork._('eftpos_au');

static const SetupIntentPaymentMethodOptionsCardNetwork girocard = SetupIntentPaymentMethodOptionsCardNetwork._('girocard');

static const SetupIntentPaymentMethodOptionsCardNetwork interac = SetupIntentPaymentMethodOptionsCardNetwork._('interac');

static const SetupIntentPaymentMethodOptionsCardNetwork jcb = SetupIntentPaymentMethodOptionsCardNetwork._('jcb');

static const SetupIntentPaymentMethodOptionsCardNetwork link = SetupIntentPaymentMethodOptionsCardNetwork._('link');

static const SetupIntentPaymentMethodOptionsCardNetwork mastercard = SetupIntentPaymentMethodOptionsCardNetwork._('mastercard');

static const SetupIntentPaymentMethodOptionsCardNetwork unionpay = SetupIntentPaymentMethodOptionsCardNetwork._('unionpay');

static const SetupIntentPaymentMethodOptionsCardNetwork unknown = SetupIntentPaymentMethodOptionsCardNetwork._('unknown');

static const SetupIntentPaymentMethodOptionsCardNetwork visa = SetupIntentPaymentMethodOptionsCardNetwork._('visa');

static const List<SetupIntentPaymentMethodOptionsCardNetwork> values = [amex, cartesBancaires, diners, discover, eftposAu, girocard, interac, jcb, link, mastercard, unionpay, unknown, visa];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SetupIntentPaymentMethodOptionsCardNetwork && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SetupIntentPaymentMethodOptionsCardNetwork($value)'; } 
 }
/// We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https://docs.stripe.com/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. If not provided, this value defaults to `automatic`. Read our guide on [manually requesting 3D Secure](https://docs.stripe.com/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
@immutable final class SetupIntentPaymentMethodOptionsCardRequestThreeDSecure {const SetupIntentPaymentMethodOptionsCardRequestThreeDSecure._(this.value);

factory SetupIntentPaymentMethodOptionsCardRequestThreeDSecure.fromJson(String json) { return switch (json) {
  'any' => any,
  'automatic' => automatic,
  'challenge' => challenge,
  _ => SetupIntentPaymentMethodOptionsCardRequestThreeDSecure._(json),
}; }

static const SetupIntentPaymentMethodOptionsCardRequestThreeDSecure any = SetupIntentPaymentMethodOptionsCardRequestThreeDSecure._('any');

static const SetupIntentPaymentMethodOptionsCardRequestThreeDSecure automatic = SetupIntentPaymentMethodOptionsCardRequestThreeDSecure._('automatic');

static const SetupIntentPaymentMethodOptionsCardRequestThreeDSecure challenge = SetupIntentPaymentMethodOptionsCardRequestThreeDSecure._('challenge');

static const List<SetupIntentPaymentMethodOptionsCardRequestThreeDSecure> values = [any, automatic, challenge];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SetupIntentPaymentMethodOptionsCardRequestThreeDSecure && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SetupIntentPaymentMethodOptionsCardRequestThreeDSecure($value)'; } 
 }
/// 
@immutable final class SetupIntentPaymentMethodOptionsCard {const SetupIntentPaymentMethodOptionsCard({this.mandateOptions = const Omittable.absent(), this.network = const Omittable.absent(), this.requestThreeDSecure = const Omittable.absent(), });

factory SetupIntentPaymentMethodOptionsCard.fromJson(Map<String, dynamic> json) { return SetupIntentPaymentMethodOptionsCard(
  mandateOptions: json.containsKey('mandate_options') ? Omittable(json['mandate_options'] != null ? SetupIntentPaymentMethodOptionsCardMandateOptions.fromJson(json['mandate_options'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  network: json.containsKey('network') ? Omittable(json['network'] != null ? SetupIntentPaymentMethodOptionsCardNetwork.fromJson(json['network'] as String) : null) : const Omittable.absent(),
  requestThreeDSecure: json.containsKey('request_three_d_secure') ? Omittable(json['request_three_d_secure'] != null ? SetupIntentPaymentMethodOptionsCardRequestThreeDSecure.fromJson(json['request_three_d_secure'] as String) : null) : const Omittable.absent(),
); }

/// Configuration options for setting up an eMandate for cards issued in India.
final Omittable<SetupIntentPaymentMethodOptionsCardMandateOptions?> mandateOptions;

/// Selected network to process this SetupIntent on. Depends on the available networks of the card attached to the setup intent. Can be only set confirm-time.
final Omittable<SetupIntentPaymentMethodOptionsCardNetwork?> network;

/// We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https://docs.stripe.com/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. If not provided, this value defaults to `automatic`. Read our guide on [manually requesting 3D Secure](https://docs.stripe.com/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
final Omittable<SetupIntentPaymentMethodOptionsCardRequestThreeDSecure?> requestThreeDSecure;

Map<String, dynamic> toJson() { return {
  if (mandateOptions.isPresent) 'mandate_options': mandateOptions.value?.toJson(),
  if (network.isPresent) 'network': network.value?.toJson(),
  if (requestThreeDSecure.isPresent) 'request_three_d_secure': requestThreeDSecure.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'mandate_options', 'network', 'request_three_d_secure'}.contains(key)); } 
SetupIntentPaymentMethodOptionsCard copyWith({Omittable<SetupIntentPaymentMethodOptionsCardMandateOptions?>? mandateOptions, Omittable<SetupIntentPaymentMethodOptionsCardNetwork?>? network, Omittable<SetupIntentPaymentMethodOptionsCardRequestThreeDSecure?>? requestThreeDSecure, }) { return SetupIntentPaymentMethodOptionsCard(
  mandateOptions: mandateOptions ?? this.mandateOptions,
  network: network ?? this.network,
  requestThreeDSecure: requestThreeDSecure ?? this.requestThreeDSecure,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SetupIntentPaymentMethodOptionsCard &&
          mandateOptions == other.mandateOptions &&
          network == other.network &&
          requestThreeDSecure == other.requestThreeDSecure; } 
@override int get hashCode { return Object.hash(mandateOptions, network, requestThreeDSecure); } 
@override String toString() { return 'SetupIntentPaymentMethodOptionsCard(mandateOptions: $mandateOptions, network: $network, requestThreeDSecure: $requestThreeDSecure)'; } 
 }
