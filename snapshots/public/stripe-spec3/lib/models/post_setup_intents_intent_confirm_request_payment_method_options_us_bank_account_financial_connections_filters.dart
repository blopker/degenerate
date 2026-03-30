// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsUsBankAccountFinancialConnectionsFiltersAccountSubcategories {const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsUsBankAccountFinancialConnectionsFiltersAccountSubcategories._(this.value);

factory PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsUsBankAccountFinancialConnectionsFiltersAccountSubcategories.fromJson(String json) { return switch (json) {
  'checking' => checking,
  'savings' => savings,
  _ => PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsUsBankAccountFinancialConnectionsFiltersAccountSubcategories._(json),
}; }

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsUsBankAccountFinancialConnectionsFiltersAccountSubcategories checking = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsUsBankAccountFinancialConnectionsFiltersAccountSubcategories._('checking');

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsUsBankAccountFinancialConnectionsFiltersAccountSubcategories savings = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsUsBankAccountFinancialConnectionsFiltersAccountSubcategories._('savings');

static const List<PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsUsBankAccountFinancialConnectionsFiltersAccountSubcategories> values = [checking, savings];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsUsBankAccountFinancialConnectionsFiltersAccountSubcategories && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsUsBankAccountFinancialConnectionsFiltersAccountSubcategories($value)'; } 
 }
final class PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsUsBankAccountFinancialConnectionsFilters {const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsUsBankAccountFinancialConnectionsFilters({this.accountSubcategories});

factory PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsUsBankAccountFinancialConnectionsFilters.fromJson(Map<String, dynamic> json) { return PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsUsBankAccountFinancialConnectionsFilters(
  accountSubcategories: (json['account_subcategories'] as List<dynamic>?)?.map((e) => PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsUsBankAccountFinancialConnectionsFiltersAccountSubcategories.fromJson(e as String)).toList(),
); }

final List<PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsUsBankAccountFinancialConnectionsFiltersAccountSubcategories>? accountSubcategories;

Map<String, dynamic> toJson() { return {
  if (accountSubcategories != null) 'account_subcategories': accountSubcategories?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account_subcategories'}.contains(key)); } 
PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsUsBankAccountFinancialConnectionsFilters copyWith({List<PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsUsBankAccountFinancialConnectionsFiltersAccountSubcategories> Function()? accountSubcategories}) { return PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsUsBankAccountFinancialConnectionsFilters(
  accountSubcategories: accountSubcategories != null ? accountSubcategories() : this.accountSubcategories,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsUsBankAccountFinancialConnectionsFilters &&
          listEquals(accountSubcategories, other.accountSubcategories); } 
@override int get hashCode { return Object.hashAll(accountSubcategories ?? const []).hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsUsBankAccountFinancialConnectionsFilters(accountSubcategories: $accountSubcategories)'; } 
 }
