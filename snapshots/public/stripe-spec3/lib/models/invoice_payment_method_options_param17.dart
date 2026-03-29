// GENERATED CODE - DO NOT MODIFY BY HAND

import 'invoice_payment_method_options_param17_installments.dart';final class InvoicePaymentMethodOptionsParam17RequestThreeDSecure {const InvoicePaymentMethodOptionsParam17RequestThreeDSecure._(this.value);

factory InvoicePaymentMethodOptionsParam17RequestThreeDSecure.fromJson(String json) { return switch (json) {
  'any' => any,
  'automatic' => automatic,
  'challenge' => challenge,
  _ => InvoicePaymentMethodOptionsParam17RequestThreeDSecure._(json),
}; }

static const InvoicePaymentMethodOptionsParam17RequestThreeDSecure any = InvoicePaymentMethodOptionsParam17RequestThreeDSecure._('any');

static const InvoicePaymentMethodOptionsParam17RequestThreeDSecure automatic = InvoicePaymentMethodOptionsParam17RequestThreeDSecure._('automatic');

static const InvoicePaymentMethodOptionsParam17RequestThreeDSecure challenge = InvoicePaymentMethodOptionsParam17RequestThreeDSecure._('challenge');

static const List<InvoicePaymentMethodOptionsParam17RequestThreeDSecure> values = [any, automatic, challenge];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InvoicePaymentMethodOptionsParam17RequestThreeDSecure && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam17RequestThreeDSecure($value)'; } 
 }
final class InvoicePaymentMethodOptionsParam17 {const InvoicePaymentMethodOptionsParam17({this.installments, this.requestThreeDSecure, });

factory InvoicePaymentMethodOptionsParam17.fromJson(Map<String, dynamic> json) { return InvoicePaymentMethodOptionsParam17(
  installments: json['installments'] != null ? InvoicePaymentMethodOptionsParam17Installments.fromJson(json['installments'] as Map<String, dynamic>) : null,
  requestThreeDSecure: json['request_three_d_secure'] != null ? InvoicePaymentMethodOptionsParam17RequestThreeDSecure.fromJson(json['request_three_d_secure'] as String) : null,
); }

final InvoicePaymentMethodOptionsParam17Installments? installments;

final InvoicePaymentMethodOptionsParam17RequestThreeDSecure? requestThreeDSecure;

Map<String, dynamic> toJson() { return {
  if (installments != null) 'installments': installments?.toJson(),
  if (requestThreeDSecure != null) 'request_three_d_secure': requestThreeDSecure?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
InvoicePaymentMethodOptionsParam17 copyWith({InvoicePaymentMethodOptionsParam17Installments Function()? installments, InvoicePaymentMethodOptionsParam17RequestThreeDSecure Function()? requestThreeDSecure, }) { return InvoicePaymentMethodOptionsParam17(
  installments: installments != null ? installments() : this.installments,
  requestThreeDSecure: requestThreeDSecure != null ? requestThreeDSecure() : this.requestThreeDSecure,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InvoicePaymentMethodOptionsParam17 &&
          installments == other.installments &&
          requestThreeDSecure == other.requestThreeDSecure; } 
@override int get hashCode { return Object.hash(installments, requestThreeDSecure); } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam17(installments: $installments, requestThreeDSecure: $requestThreeDSecure)'; } 
 }
