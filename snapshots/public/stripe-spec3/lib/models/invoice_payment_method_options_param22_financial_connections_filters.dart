// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class InvoicePaymentMethodOptionsParam22FinancialConnectionsFiltersAccountSubcategories {const InvoicePaymentMethodOptionsParam22FinancialConnectionsFiltersAccountSubcategories._(this.value);

factory InvoicePaymentMethodOptionsParam22FinancialConnectionsFiltersAccountSubcategories.fromJson(String json) { return switch (json) {
  'checking' => checking,
  'savings' => savings,
  _ => InvoicePaymentMethodOptionsParam22FinancialConnectionsFiltersAccountSubcategories._(json),
}; }

static const InvoicePaymentMethodOptionsParam22FinancialConnectionsFiltersAccountSubcategories checking = InvoicePaymentMethodOptionsParam22FinancialConnectionsFiltersAccountSubcategories._('checking');

static const InvoicePaymentMethodOptionsParam22FinancialConnectionsFiltersAccountSubcategories savings = InvoicePaymentMethodOptionsParam22FinancialConnectionsFiltersAccountSubcategories._('savings');

static const List<InvoicePaymentMethodOptionsParam22FinancialConnectionsFiltersAccountSubcategories> values = [checking, savings];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InvoicePaymentMethodOptionsParam22FinancialConnectionsFiltersAccountSubcategories && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam22FinancialConnectionsFiltersAccountSubcategories($value)'; } 
 }
@immutable final class InvoicePaymentMethodOptionsParam22FinancialConnectionsFilters {const InvoicePaymentMethodOptionsParam22FinancialConnectionsFilters({this.accountSubcategories});

factory InvoicePaymentMethodOptionsParam22FinancialConnectionsFilters.fromJson(Map<String, dynamic> json) { return InvoicePaymentMethodOptionsParam22FinancialConnectionsFilters(
  accountSubcategories: (json['account_subcategories'] as List<dynamic>?)?.map((e) => InvoicePaymentMethodOptionsParam22FinancialConnectionsFiltersAccountSubcategories.fromJson(e as String)).toList(),
); }

final List<InvoicePaymentMethodOptionsParam22FinancialConnectionsFiltersAccountSubcategories>? accountSubcategories;

Map<String, dynamic> toJson() { return {
  if (accountSubcategories != null) 'account_subcategories': accountSubcategories?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account_subcategories'}.contains(key)); } 
InvoicePaymentMethodOptionsParam22FinancialConnectionsFilters copyWith({List<InvoicePaymentMethodOptionsParam22FinancialConnectionsFiltersAccountSubcategories> Function()? accountSubcategories}) { return InvoicePaymentMethodOptionsParam22FinancialConnectionsFilters(
  accountSubcategories: accountSubcategories != null ? accountSubcategories() : this.accountSubcategories,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InvoicePaymentMethodOptionsParam22FinancialConnectionsFilters &&
          listEquals(accountSubcategories, other.accountSubcategories); } 
@override int get hashCode { return Object.hashAll(accountSubcategories ?? const []).hashCode; } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam22FinancialConnectionsFilters(accountSubcategories: $accountSubcategories)'; } 
 }
