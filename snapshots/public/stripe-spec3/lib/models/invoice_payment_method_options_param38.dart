// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_payment_method_options_param38_mandate_options.dart';@immutable final class InvoicePaymentMethodOptionsParam38VerificationMethod {const InvoicePaymentMethodOptionsParam38VerificationMethod._(this.value);

factory InvoicePaymentMethodOptionsParam38VerificationMethod.fromJson(String json) { return switch (json) {
  'automatic' => automatic,
  'instant' => instant,
  'microdeposits' => microdeposits,
  _ => InvoicePaymentMethodOptionsParam38VerificationMethod._(json),
}; }

static const InvoicePaymentMethodOptionsParam38VerificationMethod automatic = InvoicePaymentMethodOptionsParam38VerificationMethod._('automatic');

static const InvoicePaymentMethodOptionsParam38VerificationMethod instant = InvoicePaymentMethodOptionsParam38VerificationMethod._('instant');

static const InvoicePaymentMethodOptionsParam38VerificationMethod microdeposits = InvoicePaymentMethodOptionsParam38VerificationMethod._('microdeposits');

static const List<InvoicePaymentMethodOptionsParam38VerificationMethod> values = [automatic, instant, microdeposits];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InvoicePaymentMethodOptionsParam38VerificationMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam38VerificationMethod($value)'; } 
 }
@immutable final class InvoicePaymentMethodOptionsParam38 {const InvoicePaymentMethodOptionsParam38({this.mandateOptions, this.verificationMethod, });

factory InvoicePaymentMethodOptionsParam38.fromJson(Map<String, dynamic> json) { return InvoicePaymentMethodOptionsParam38(
  mandateOptions: json['mandate_options'] != null ? InvoicePaymentMethodOptionsParam38MandateOptions.fromJson(json['mandate_options'] as Map<String, dynamic>) : null,
  verificationMethod: json['verification_method'] != null ? InvoicePaymentMethodOptionsParam38VerificationMethod.fromJson(json['verification_method'] as String) : null,
); }

final InvoicePaymentMethodOptionsParam38MandateOptions? mandateOptions;

final InvoicePaymentMethodOptionsParam38VerificationMethod? verificationMethod;

Map<String, dynamic> toJson() { return {
  if (mandateOptions != null) 'mandate_options': mandateOptions?.toJson(),
  if (verificationMethod != null) 'verification_method': verificationMethod?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'mandate_options', 'verification_method'}.contains(key)); } 
InvoicePaymentMethodOptionsParam38 copyWith({InvoicePaymentMethodOptionsParam38MandateOptions Function()? mandateOptions, InvoicePaymentMethodOptionsParam38VerificationMethod Function()? verificationMethod, }) { return InvoicePaymentMethodOptionsParam38(
  mandateOptions: mandateOptions != null ? mandateOptions() : this.mandateOptions,
  verificationMethod: verificationMethod != null ? verificationMethod() : this.verificationMethod,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InvoicePaymentMethodOptionsParam38 &&
          mandateOptions == other.mandateOptions &&
          verificationMethod == other.verificationMethod; } 
@override int get hashCode { return Object.hash(mandateOptions, verificationMethod); } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam38(mandateOptions: $mandateOptions, verificationMethod: $verificationMethod)'; } 
 }
