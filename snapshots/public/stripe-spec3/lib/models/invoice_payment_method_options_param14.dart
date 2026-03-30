// GENERATED CODE - DO NOT MODIFY BY HAND

import 'invoice_payment_method_options_param14_financial_connections.dart';final class InvoicePaymentMethodOptionsParam14VerificationMethod {const InvoicePaymentMethodOptionsParam14VerificationMethod._(this.value);

factory InvoicePaymentMethodOptionsParam14VerificationMethod.fromJson(String json) { return switch (json) {
  'automatic' => automatic,
  'instant' => instant,
  'microdeposits' => microdeposits,
  _ => InvoicePaymentMethodOptionsParam14VerificationMethod._(json),
}; }

static const InvoicePaymentMethodOptionsParam14VerificationMethod automatic = InvoicePaymentMethodOptionsParam14VerificationMethod._('automatic');

static const InvoicePaymentMethodOptionsParam14VerificationMethod instant = InvoicePaymentMethodOptionsParam14VerificationMethod._('instant');

static const InvoicePaymentMethodOptionsParam14VerificationMethod microdeposits = InvoicePaymentMethodOptionsParam14VerificationMethod._('microdeposits');

static const List<InvoicePaymentMethodOptionsParam14VerificationMethod> values = [automatic, instant, microdeposits];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InvoicePaymentMethodOptionsParam14VerificationMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam14VerificationMethod($value)'; } 
 }
final class InvoicePaymentMethodOptionsParam14 {const InvoicePaymentMethodOptionsParam14({this.financialConnections, this.verificationMethod, });

factory InvoicePaymentMethodOptionsParam14.fromJson(Map<String, dynamic> json) { return InvoicePaymentMethodOptionsParam14(
  financialConnections: json['financial_connections'] != null ? InvoicePaymentMethodOptionsParam14FinancialConnections.fromJson(json['financial_connections'] as Map<String, dynamic>) : null,
  verificationMethod: json['verification_method'] != null ? InvoicePaymentMethodOptionsParam14VerificationMethod.fromJson(json['verification_method'] as String) : null,
); }

final InvoicePaymentMethodOptionsParam14FinancialConnections? financialConnections;

final InvoicePaymentMethodOptionsParam14VerificationMethod? verificationMethod;

Map<String, dynamic> toJson() { return {
  if (financialConnections != null) 'financial_connections': financialConnections?.toJson(),
  if (verificationMethod != null) 'verification_method': verificationMethod?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'financial_connections', 'verification_method'}.contains(key)); } 
InvoicePaymentMethodOptionsParam14 copyWith({InvoicePaymentMethodOptionsParam14FinancialConnections Function()? financialConnections, InvoicePaymentMethodOptionsParam14VerificationMethod Function()? verificationMethod, }) { return InvoicePaymentMethodOptionsParam14(
  financialConnections: financialConnections != null ? financialConnections() : this.financialConnections,
  verificationMethod: verificationMethod != null ? verificationMethod() : this.verificationMethod,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InvoicePaymentMethodOptionsParam14 &&
          financialConnections == other.financialConnections &&
          verificationMethod == other.verificationMethod; } 
@override int get hashCode { return Object.hash(financialConnections, verificationMethod); } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam14(financialConnections: $financialConnections, verificationMethod: $verificationMethod)'; } 
 }
