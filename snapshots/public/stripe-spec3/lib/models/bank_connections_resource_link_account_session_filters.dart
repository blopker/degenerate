// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class BankConnectionsResourceLinkAccountSessionFiltersAccountSubcategories {const BankConnectionsResourceLinkAccountSessionFiltersAccountSubcategories._(this.value);

factory BankConnectionsResourceLinkAccountSessionFiltersAccountSubcategories.fromJson(String json) { return switch (json) {
  'checking' => checking,
  'credit_card' => creditCard,
  'line_of_credit' => lineOfCredit,
  'mortgage' => mortgage,
  'savings' => savings,
  _ => BankConnectionsResourceLinkAccountSessionFiltersAccountSubcategories._(json),
}; }

static const BankConnectionsResourceLinkAccountSessionFiltersAccountSubcategories checking = BankConnectionsResourceLinkAccountSessionFiltersAccountSubcategories._('checking');

static const BankConnectionsResourceLinkAccountSessionFiltersAccountSubcategories creditCard = BankConnectionsResourceLinkAccountSessionFiltersAccountSubcategories._('credit_card');

static const BankConnectionsResourceLinkAccountSessionFiltersAccountSubcategories lineOfCredit = BankConnectionsResourceLinkAccountSessionFiltersAccountSubcategories._('line_of_credit');

static const BankConnectionsResourceLinkAccountSessionFiltersAccountSubcategories mortgage = BankConnectionsResourceLinkAccountSessionFiltersAccountSubcategories._('mortgage');

static const BankConnectionsResourceLinkAccountSessionFiltersAccountSubcategories savings = BankConnectionsResourceLinkAccountSessionFiltersAccountSubcategories._('savings');

static const List<BankConnectionsResourceLinkAccountSessionFiltersAccountSubcategories> values = [checking, creditCard, lineOfCredit, mortgage, savings];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is BankConnectionsResourceLinkAccountSessionFiltersAccountSubcategories && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'BankConnectionsResourceLinkAccountSessionFiltersAccountSubcategories($value)'; } 
 }
/// 
@immutable final class BankConnectionsResourceLinkAccountSessionFilters {const BankConnectionsResourceLinkAccountSessionFilters({this.accountSubcategories = const Omittable.absent(), this.countries = const Omittable.absent(), });

factory BankConnectionsResourceLinkAccountSessionFilters.fromJson(Map<String, dynamic> json) { return BankConnectionsResourceLinkAccountSessionFilters(
  accountSubcategories: json.containsKey('account_subcategories') ? Omittable((json['account_subcategories'] as List<dynamic>?)?.map((e) => BankConnectionsResourceLinkAccountSessionFiltersAccountSubcategories.fromJson(e as String)).toList()) : const Omittable.absent(),
  countries: json.containsKey('countries') ? Omittable((json['countries'] as List<dynamic>?)?.map((e) => e as String).toList()) : const Omittable.absent(),
); }

/// Restricts the Session to subcategories of accounts that can be linked. Valid subcategories are: `checking`, `savings`, `mortgage`, `line_of_credit`, `credit_card`.
final Omittable<List<BankConnectionsResourceLinkAccountSessionFiltersAccountSubcategories>?> accountSubcategories;

/// List of countries from which to filter accounts.
final Omittable<List<String>?> countries;

Map<String, dynamic> toJson() { return {
  if (accountSubcategories.isPresent) 'account_subcategories': accountSubcategories.value?.map((e) => e.toJson()).toList(),
  if (countries.isPresent) 'countries': countries.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account_subcategories', 'countries'}.contains(key)); } 
BankConnectionsResourceLinkAccountSessionFilters copyWith({Omittable<List<BankConnectionsResourceLinkAccountSessionFiltersAccountSubcategories>?>? accountSubcategories, Omittable<List<String>?>? countries, }) { return BankConnectionsResourceLinkAccountSessionFilters(
  accountSubcategories: accountSubcategories ?? this.accountSubcategories,
  countries: countries ?? this.countries,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BankConnectionsResourceLinkAccountSessionFilters &&
          accountSubcategories.isPresent == other.accountSubcategories.isPresent &&
          listEquals(accountSubcategories.value, other.accountSubcategories.value) &&
          countries.isPresent == other.countries.isPresent &&
          listEquals(countries.value, other.countries.value); } 
@override int get hashCode { return Object.hash(Object.hashAll(accountSubcategories.value ?? const []), Object.hashAll(countries.value ?? const [])); } 
@override String toString() { return 'BankConnectionsResourceLinkAccountSessionFilters(accountSubcategories: $accountSubcategories, countries: $countries)'; } 
 }
