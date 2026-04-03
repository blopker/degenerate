// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostLinkAccountSessionsRequestFiltersAccountSubcategories {const PostLinkAccountSessionsRequestFiltersAccountSubcategories._(this.value);

factory PostLinkAccountSessionsRequestFiltersAccountSubcategories.fromJson(String json) { return switch (json) {
  'checking' => checking,
  'credit_card' => creditCard,
  'line_of_credit' => lineOfCredit,
  'mortgage' => mortgage,
  'savings' => savings,
  _ => PostLinkAccountSessionsRequestFiltersAccountSubcategories._(json),
}; }

static const PostLinkAccountSessionsRequestFiltersAccountSubcategories checking = PostLinkAccountSessionsRequestFiltersAccountSubcategories._('checking');

static const PostLinkAccountSessionsRequestFiltersAccountSubcategories creditCard = PostLinkAccountSessionsRequestFiltersAccountSubcategories._('credit_card');

static const PostLinkAccountSessionsRequestFiltersAccountSubcategories lineOfCredit = PostLinkAccountSessionsRequestFiltersAccountSubcategories._('line_of_credit');

static const PostLinkAccountSessionsRequestFiltersAccountSubcategories mortgage = PostLinkAccountSessionsRequestFiltersAccountSubcategories._('mortgage');

static const PostLinkAccountSessionsRequestFiltersAccountSubcategories savings = PostLinkAccountSessionsRequestFiltersAccountSubcategories._('savings');

static const List<PostLinkAccountSessionsRequestFiltersAccountSubcategories> values = [checking, creditCard, lineOfCredit, mortgage, savings];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostLinkAccountSessionsRequestFiltersAccountSubcategories && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostLinkAccountSessionsRequestFiltersAccountSubcategories($value)'; } 
 }
/// Filters to restrict the kinds of accounts to collect.
@immutable final class PostLinkAccountSessionsRequestFilters {const PostLinkAccountSessionsRequestFilters({this.accountSubcategories, this.countries, });

factory PostLinkAccountSessionsRequestFilters.fromJson(Map<String, dynamic> json) { return PostLinkAccountSessionsRequestFilters(
  accountSubcategories: (json['account_subcategories'] as List<dynamic>?)?.map((e) => PostLinkAccountSessionsRequestFiltersAccountSubcategories.fromJson(e as String)).toList(),
  countries: (json['countries'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

final List<PostLinkAccountSessionsRequestFiltersAccountSubcategories>? accountSubcategories;

final List<String>? countries;

Map<String, dynamic> toJson() { return {
  if (accountSubcategories != null) 'account_subcategories': accountSubcategories?.map((e) => e.toJson()).toList(),
  'countries': ?countries,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account_subcategories', 'countries'}.contains(key)); } 
PostLinkAccountSessionsRequestFilters copyWith({List<PostLinkAccountSessionsRequestFiltersAccountSubcategories> Function()? accountSubcategories, List<String> Function()? countries, }) { return PostLinkAccountSessionsRequestFilters(
  accountSubcategories: accountSubcategories != null ? accountSubcategories() : this.accountSubcategories,
  countries: countries != null ? countries() : this.countries,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostLinkAccountSessionsRequestFilters &&
          listEquals(accountSubcategories, other.accountSubcategories) &&
          listEquals(countries, other.countries); } 
@override int get hashCode { return Object.hash(Object.hashAll(accountSubcategories ?? const []), Object.hashAll(countries ?? const [])); } 
@override String toString() { return 'PostLinkAccountSessionsRequestFilters(accountSubcategories: $accountSubcategories, countries: $countries)'; } 
 }
