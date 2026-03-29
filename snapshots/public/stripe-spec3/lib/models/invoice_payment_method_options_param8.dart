// GENERATED CODE - DO NOT MODIFY BY HAND

import 'invoice_payment_method_options_param8_mandate_options.dart';final class InvoicePaymentMethodOptionsParam8VerificationMethod {const InvoicePaymentMethodOptionsParam8VerificationMethod._(this.value);

factory InvoicePaymentMethodOptionsParam8VerificationMethod.fromJson(String json) { return switch (json) {
  'automatic' => automatic,
  'instant' => instant,
  'microdeposits' => microdeposits,
  _ => InvoicePaymentMethodOptionsParam8VerificationMethod._(json),
}; }

static const InvoicePaymentMethodOptionsParam8VerificationMethod automatic = InvoicePaymentMethodOptionsParam8VerificationMethod._('automatic');

static const InvoicePaymentMethodOptionsParam8VerificationMethod instant = InvoicePaymentMethodOptionsParam8VerificationMethod._('instant');

static const InvoicePaymentMethodOptionsParam8VerificationMethod microdeposits = InvoicePaymentMethodOptionsParam8VerificationMethod._('microdeposits');

static const List<InvoicePaymentMethodOptionsParam8VerificationMethod> values = [automatic, instant, microdeposits];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InvoicePaymentMethodOptionsParam8VerificationMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam8VerificationMethod($value)'; } 
 }
final class InvoicePaymentMethodOptionsParam8 {const InvoicePaymentMethodOptionsParam8({this.mandateOptions, this.verificationMethod, });

factory InvoicePaymentMethodOptionsParam8.fromJson(Map<String, dynamic> json) { return InvoicePaymentMethodOptionsParam8(
  mandateOptions: json['mandate_options'] != null ? InvoicePaymentMethodOptionsParam8MandateOptions.fromJson(json['mandate_options'] as Map<String, dynamic>) : null,
  verificationMethod: json['verification_method'] != null ? InvoicePaymentMethodOptionsParam8VerificationMethod.fromJson(json['verification_method'] as String) : null,
); }

final InvoicePaymentMethodOptionsParam8MandateOptions? mandateOptions;

final InvoicePaymentMethodOptionsParam8VerificationMethod? verificationMethod;

Map<String, dynamic> toJson() { return {
  if (mandateOptions != null) 'mandate_options': mandateOptions?.toJson(),
  if (verificationMethod != null) 'verification_method': verificationMethod?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'mandate_options', 'verification_method'}.contains(key)); } 
InvoicePaymentMethodOptionsParam8 copyWith({InvoicePaymentMethodOptionsParam8MandateOptions Function()? mandateOptions, InvoicePaymentMethodOptionsParam8VerificationMethod Function()? verificationMethod, }) { return InvoicePaymentMethodOptionsParam8(
  mandateOptions: mandateOptions != null ? mandateOptions() : this.mandateOptions,
  verificationMethod: verificationMethod != null ? verificationMethod() : this.verificationMethod,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InvoicePaymentMethodOptionsParam8 &&
          mandateOptions == other.mandateOptions &&
          verificationMethod == other.verificationMethod; } 
@override int get hashCode { return Object.hash(mandateOptions, verificationMethod); } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam8(mandateOptions: $mandateOptions, verificationMethod: $verificationMethod)'; } 
 }
