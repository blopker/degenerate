// GENERATED CODE - DO NOT MODIFY BY HAND

import 'invoice_installments_card.dart';/// We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https://docs.stripe.com/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. Read our guide on [manually requesting 3D Secure](https://docs.stripe.com/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
final class InvoicePaymentMethodOptionsCardRequestThreeDSecure {const InvoicePaymentMethodOptionsCardRequestThreeDSecure._(this.value);

factory InvoicePaymentMethodOptionsCardRequestThreeDSecure.fromJson(String json) { return switch (json) {
  'any' => any,
  'automatic' => automatic,
  'challenge' => challenge,
  _ => InvoicePaymentMethodOptionsCardRequestThreeDSecure._(json),
}; }

static const InvoicePaymentMethodOptionsCardRequestThreeDSecure any = InvoicePaymentMethodOptionsCardRequestThreeDSecure._('any');

static const InvoicePaymentMethodOptionsCardRequestThreeDSecure automatic = InvoicePaymentMethodOptionsCardRequestThreeDSecure._('automatic');

static const InvoicePaymentMethodOptionsCardRequestThreeDSecure challenge = InvoicePaymentMethodOptionsCardRequestThreeDSecure._('challenge');

static const List<InvoicePaymentMethodOptionsCardRequestThreeDSecure> values = [any, automatic, challenge];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InvoicePaymentMethodOptionsCardRequestThreeDSecure && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InvoicePaymentMethodOptionsCardRequestThreeDSecure($value)'; } 
 }
/// 
final class InvoicePaymentMethodOptionsCard {const InvoicePaymentMethodOptionsCard({this.installments, this.requestThreeDSecure, });

factory InvoicePaymentMethodOptionsCard.fromJson(Map<String, dynamic> json) { return InvoicePaymentMethodOptionsCard(
  installments: json['installments'] != null ? InvoiceInstallmentsCard.fromJson(json['installments'] as Map<String, dynamic>) : null,
  requestThreeDSecure: json['request_three_d_secure'] != null ? InvoicePaymentMethodOptionsCardRequestThreeDSecure.fromJson(json['request_three_d_secure'] as String) : null,
); }

final InvoiceInstallmentsCard? installments;

/// We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https://docs.stripe.com/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. Read our guide on [manually requesting 3D Secure](https://docs.stripe.com/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
final InvoicePaymentMethodOptionsCardRequestThreeDSecure? requestThreeDSecure;

Map<String, dynamic> toJson() { return {
  if (installments != null) 'installments': installments?.toJson(),
  if (requestThreeDSecure != null) 'request_three_d_secure': requestThreeDSecure?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'installments', 'request_three_d_secure'}.contains(key)); } 
InvoicePaymentMethodOptionsCard copyWith({InvoiceInstallmentsCard Function()? installments, InvoicePaymentMethodOptionsCardRequestThreeDSecure? Function()? requestThreeDSecure, }) { return InvoicePaymentMethodOptionsCard(
  installments: installments != null ? installments() : this.installments,
  requestThreeDSecure: requestThreeDSecure != null ? requestThreeDSecure() : this.requestThreeDSecure,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InvoicePaymentMethodOptionsCard &&
          installments == other.installments &&
          requestThreeDSecure == other.requestThreeDSecure; } 
@override int get hashCode { return Object.hash(installments, requestThreeDSecure); } 
@override String toString() { return 'InvoicePaymentMethodOptionsCard(installments: $installments, requestThreeDSecure: $requestThreeDSecure)'; } 
 }
