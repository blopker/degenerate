// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class InvoicePaymentMethodOptionsParam37FinancialConnectionsFiltersAccountSubcategories {const InvoicePaymentMethodOptionsParam37FinancialConnectionsFiltersAccountSubcategories._(this.value);

factory InvoicePaymentMethodOptionsParam37FinancialConnectionsFiltersAccountSubcategories.fromJson(String json) { return switch (json) {
  'checking' => checking,
  'savings' => savings,
  _ => InvoicePaymentMethodOptionsParam37FinancialConnectionsFiltersAccountSubcategories._(json),
}; }

static const InvoicePaymentMethodOptionsParam37FinancialConnectionsFiltersAccountSubcategories checking = InvoicePaymentMethodOptionsParam37FinancialConnectionsFiltersAccountSubcategories._('checking');

static const InvoicePaymentMethodOptionsParam37FinancialConnectionsFiltersAccountSubcategories savings = InvoicePaymentMethodOptionsParam37FinancialConnectionsFiltersAccountSubcategories._('savings');

static const List<InvoicePaymentMethodOptionsParam37FinancialConnectionsFiltersAccountSubcategories> values = [checking, savings];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InvoicePaymentMethodOptionsParam37FinancialConnectionsFiltersAccountSubcategories && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam37FinancialConnectionsFiltersAccountSubcategories($value)'; } 
 }
@immutable final class InvoicePaymentMethodOptionsParam37FinancialConnectionsFilters {const InvoicePaymentMethodOptionsParam37FinancialConnectionsFilters({this.accountSubcategories});

factory InvoicePaymentMethodOptionsParam37FinancialConnectionsFilters.fromJson(Map<String, dynamic> json) { return InvoicePaymentMethodOptionsParam37FinancialConnectionsFilters(
  accountSubcategories: (json['account_subcategories'] as List<dynamic>?)?.map((e) => InvoicePaymentMethodOptionsParam37FinancialConnectionsFiltersAccountSubcategories.fromJson(e as String)).toList(),
); }

final List<InvoicePaymentMethodOptionsParam37FinancialConnectionsFiltersAccountSubcategories>? accountSubcategories;

Map<String, dynamic> toJson() { return {
  if (accountSubcategories != null) 'account_subcategories': accountSubcategories?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account_subcategories'}.contains(key)); } 
InvoicePaymentMethodOptionsParam37FinancialConnectionsFilters copyWith({List<InvoicePaymentMethodOptionsParam37FinancialConnectionsFiltersAccountSubcategories> Function()? accountSubcategories}) { return InvoicePaymentMethodOptionsParam37FinancialConnectionsFilters(
  accountSubcategories: accountSubcategories != null ? accountSubcategories() : this.accountSubcategories,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InvoicePaymentMethodOptionsParam37FinancialConnectionsFilters &&
          listEquals(accountSubcategories, other.accountSubcategories); } 
@override int get hashCode { return Object.hashAll(accountSubcategories ?? const []).hashCode; } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam37FinancialConnectionsFilters(accountSubcategories: $accountSubcategories)'; } 
 }
