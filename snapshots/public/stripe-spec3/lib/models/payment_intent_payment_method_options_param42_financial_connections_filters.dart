// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentIntentPaymentMethodOptionsParam42FinancialConnectionsFiltersAccountSubcategories {const PaymentIntentPaymentMethodOptionsParam42FinancialConnectionsFiltersAccountSubcategories._(this.value);

factory PaymentIntentPaymentMethodOptionsParam42FinancialConnectionsFiltersAccountSubcategories.fromJson(String json) { return switch (json) {
  'checking' => checking,
  'savings' => savings,
  _ => PaymentIntentPaymentMethodOptionsParam42FinancialConnectionsFiltersAccountSubcategories._(json),
}; }

static const PaymentIntentPaymentMethodOptionsParam42FinancialConnectionsFiltersAccountSubcategories checking = PaymentIntentPaymentMethodOptionsParam42FinancialConnectionsFiltersAccountSubcategories._('checking');

static const PaymentIntentPaymentMethodOptionsParam42FinancialConnectionsFiltersAccountSubcategories savings = PaymentIntentPaymentMethodOptionsParam42FinancialConnectionsFiltersAccountSubcategories._('savings');

static const List<PaymentIntentPaymentMethodOptionsParam42FinancialConnectionsFiltersAccountSubcategories> values = [checking, savings];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParam42FinancialConnectionsFiltersAccountSubcategories && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam42FinancialConnectionsFiltersAccountSubcategories($value)'; } 
 }
@immutable final class PaymentIntentPaymentMethodOptionsParam42FinancialConnectionsFilters {const PaymentIntentPaymentMethodOptionsParam42FinancialConnectionsFilters({this.accountSubcategories});

factory PaymentIntentPaymentMethodOptionsParam42FinancialConnectionsFilters.fromJson(Map<String, dynamic> json) { return PaymentIntentPaymentMethodOptionsParam42FinancialConnectionsFilters(
  accountSubcategories: (json['account_subcategories'] as List<dynamic>?)?.map((e) => PaymentIntentPaymentMethodOptionsParam42FinancialConnectionsFiltersAccountSubcategories.fromJson(e as String)).toList(),
); }

final List<PaymentIntentPaymentMethodOptionsParam42FinancialConnectionsFiltersAccountSubcategories>? accountSubcategories;

Map<String, dynamic> toJson() { return {
  if (accountSubcategories != null) 'account_subcategories': accountSubcategories?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account_subcategories'}.contains(key)); } 
PaymentIntentPaymentMethodOptionsParam42FinancialConnectionsFilters copyWith({List<PaymentIntentPaymentMethodOptionsParam42FinancialConnectionsFiltersAccountSubcategories> Function()? accountSubcategories}) { return PaymentIntentPaymentMethodOptionsParam42FinancialConnectionsFilters(
  accountSubcategories: accountSubcategories != null ? accountSubcategories() : this.accountSubcategories,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentIntentPaymentMethodOptionsParam42FinancialConnectionsFilters &&
          listEquals(accountSubcategories, other.accountSubcategories); } 
@override int get hashCode { return Object.hashAll(accountSubcategories ?? const []).hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam42FinancialConnectionsFilters(accountSubcategories: $accountSubcategories)'; } 
 }
