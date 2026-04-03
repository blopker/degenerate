// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The desired country code of the bank account information. Permitted values include: `DE`, `FR`, `IE`, or `NL`.
@immutable final class InvoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransferCountry {const InvoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransferCountry._(this.value);

factory InvoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransferCountry.fromJson(String json) { return switch (json) {
  'BE' => be,
  'DE' => de,
  'ES' => es,
  'FR' => fr,
  'IE' => ie,
  'NL' => nl,
  _ => InvoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransferCountry._(json),
}; }

static const InvoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransferCountry be = InvoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransferCountry._('BE');

static const InvoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransferCountry de = InvoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransferCountry._('DE');

static const InvoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransferCountry es = InvoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransferCountry._('ES');

static const InvoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransferCountry fr = InvoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransferCountry._('FR');

static const InvoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransferCountry ie = InvoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransferCountry._('IE');

static const InvoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransferCountry nl = InvoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransferCountry._('NL');

static const List<InvoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransferCountry> values = [be, de, es, fr, ie, nl];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InvoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransferCountry && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InvoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransferCountry($value)'; } 
 }
/// 
@immutable final class InvoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransfer {const InvoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransfer({required this.country});

factory InvoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransfer.fromJson(Map<String, dynamic> json) { return InvoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransfer(
  country: InvoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransferCountry.fromJson(json['country'] as String),
); }

/// The desired country code of the bank account information. Permitted values include: `DE`, `FR`, `IE`, or `NL`.
final InvoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransferCountry country;

Map<String, dynamic> toJson() { return {
  'country': country.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('country'); } 
InvoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransfer copyWith({InvoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransferCountry? country}) { return InvoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransfer(
  country: country ?? this.country,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InvoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransfer &&
          country == other.country; } 
@override int get hashCode { return country.hashCode; } 
@override String toString() { return 'InvoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransfer(country: $country)'; } 
 }
