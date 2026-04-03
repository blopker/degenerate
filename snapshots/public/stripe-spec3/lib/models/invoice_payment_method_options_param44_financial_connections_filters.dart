// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class InvoicePaymentMethodOptionsParam44FinancialConnectionsFiltersAccountSubcategories {const InvoicePaymentMethodOptionsParam44FinancialConnectionsFiltersAccountSubcategories._(this.value);

factory InvoicePaymentMethodOptionsParam44FinancialConnectionsFiltersAccountSubcategories.fromJson(String json) { return switch (json) {
  'checking' => checking,
  'savings' => savings,
  _ => InvoicePaymentMethodOptionsParam44FinancialConnectionsFiltersAccountSubcategories._(json),
}; }

static const InvoicePaymentMethodOptionsParam44FinancialConnectionsFiltersAccountSubcategories checking = InvoicePaymentMethodOptionsParam44FinancialConnectionsFiltersAccountSubcategories._('checking');

static const InvoicePaymentMethodOptionsParam44FinancialConnectionsFiltersAccountSubcategories savings = InvoicePaymentMethodOptionsParam44FinancialConnectionsFiltersAccountSubcategories._('savings');

static const List<InvoicePaymentMethodOptionsParam44FinancialConnectionsFiltersAccountSubcategories> values = [checking, savings];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InvoicePaymentMethodOptionsParam44FinancialConnectionsFiltersAccountSubcategories && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam44FinancialConnectionsFiltersAccountSubcategories($value)'; } 
 }
@immutable final class InvoicePaymentMethodOptionsParam44FinancialConnectionsFilters {const InvoicePaymentMethodOptionsParam44FinancialConnectionsFilters({this.accountSubcategories});

factory InvoicePaymentMethodOptionsParam44FinancialConnectionsFilters.fromJson(Map<String, dynamic> json) { return InvoicePaymentMethodOptionsParam44FinancialConnectionsFilters(
  accountSubcategories: (json['account_subcategories'] as List<dynamic>?)?.map((e) => InvoicePaymentMethodOptionsParam44FinancialConnectionsFiltersAccountSubcategories.fromJson(e as String)).toList(),
); }

final List<InvoicePaymentMethodOptionsParam44FinancialConnectionsFiltersAccountSubcategories>? accountSubcategories;

Map<String, dynamic> toJson() { return {
  if (accountSubcategories != null) 'account_subcategories': accountSubcategories?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account_subcategories'}.contains(key)); } 
InvoicePaymentMethodOptionsParam44FinancialConnectionsFilters copyWith({List<InvoicePaymentMethodOptionsParam44FinancialConnectionsFiltersAccountSubcategories> Function()? accountSubcategories}) { return InvoicePaymentMethodOptionsParam44FinancialConnectionsFilters(
  accountSubcategories: accountSubcategories != null ? accountSubcategories() : this.accountSubcategories,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InvoicePaymentMethodOptionsParam44FinancialConnectionsFilters &&
          listEquals(accountSubcategories, other.accountSubcategories); } 
@override int get hashCode { return Object.hashAll(accountSubcategories ?? const []).hashCode; } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam44FinancialConnectionsFilters(accountSubcategories: $accountSubcategories)'; } 
 }
