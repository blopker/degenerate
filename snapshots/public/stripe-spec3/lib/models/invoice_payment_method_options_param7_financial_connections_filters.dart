// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class InvoicePaymentMethodOptionsParam7FinancialConnectionsFiltersAccountSubcategories {const InvoicePaymentMethodOptionsParam7FinancialConnectionsFiltersAccountSubcategories._(this.value);

factory InvoicePaymentMethodOptionsParam7FinancialConnectionsFiltersAccountSubcategories.fromJson(String json) { return switch (json) {
  'checking' => checking,
  'savings' => savings,
  _ => InvoicePaymentMethodOptionsParam7FinancialConnectionsFiltersAccountSubcategories._(json),
}; }

static const InvoicePaymentMethodOptionsParam7FinancialConnectionsFiltersAccountSubcategories checking = InvoicePaymentMethodOptionsParam7FinancialConnectionsFiltersAccountSubcategories._('checking');

static const InvoicePaymentMethodOptionsParam7FinancialConnectionsFiltersAccountSubcategories savings = InvoicePaymentMethodOptionsParam7FinancialConnectionsFiltersAccountSubcategories._('savings');

static const List<InvoicePaymentMethodOptionsParam7FinancialConnectionsFiltersAccountSubcategories> values = [checking, savings];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InvoicePaymentMethodOptionsParam7FinancialConnectionsFiltersAccountSubcategories && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam7FinancialConnectionsFiltersAccountSubcategories($value)'; } 
 }
@immutable final class InvoicePaymentMethodOptionsParam7FinancialConnectionsFilters {const InvoicePaymentMethodOptionsParam7FinancialConnectionsFilters({this.accountSubcategories});

factory InvoicePaymentMethodOptionsParam7FinancialConnectionsFilters.fromJson(Map<String, dynamic> json) { return InvoicePaymentMethodOptionsParam7FinancialConnectionsFilters(
  accountSubcategories: (json['account_subcategories'] as List<dynamic>?)?.map((e) => InvoicePaymentMethodOptionsParam7FinancialConnectionsFiltersAccountSubcategories.fromJson(e as String)).toList(),
); }

final List<InvoicePaymentMethodOptionsParam7FinancialConnectionsFiltersAccountSubcategories>? accountSubcategories;

Map<String, dynamic> toJson() { return {
  if (accountSubcategories != null) 'account_subcategories': accountSubcategories?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account_subcategories'}.contains(key)); } 
InvoicePaymentMethodOptionsParam7FinancialConnectionsFilters copyWith({List<InvoicePaymentMethodOptionsParam7FinancialConnectionsFiltersAccountSubcategories> Function()? accountSubcategories}) { return InvoicePaymentMethodOptionsParam7FinancialConnectionsFilters(
  accountSubcategories: accountSubcategories != null ? accountSubcategories() : this.accountSubcategories,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InvoicePaymentMethodOptionsParam7FinancialConnectionsFilters &&
          listEquals(accountSubcategories, other.accountSubcategories); } 
@override int get hashCode { return Object.hashAll(accountSubcategories ?? const []).hashCode; } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam7FinancialConnectionsFilters(accountSubcategories: $accountSubcategories)'; } 
 }
