// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_tax_registrations_request_country_options_us_state_sales_tax_elections.dart';@immutable final class PostTaxRegistrationsRequestCountryOptionsUsStateSalesTax {const PostTaxRegistrationsRequestCountryOptionsUsStateSalesTax({required this.elections});

factory PostTaxRegistrationsRequestCountryOptionsUsStateSalesTax.fromJson(Map<String, dynamic> json) { return PostTaxRegistrationsRequestCountryOptionsUsStateSalesTax(
  elections: (json['elections'] as List<dynamic>).map((e) => PostTaxRegistrationsRequestCountryOptionsUsStateSalesTaxElections.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<PostTaxRegistrationsRequestCountryOptionsUsStateSalesTaxElections> elections;

Map<String, dynamic> toJson() { return {
  'elections': elections.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('elections'); } 
PostTaxRegistrationsRequestCountryOptionsUsStateSalesTax copyWith({List<PostTaxRegistrationsRequestCountryOptionsUsStateSalesTaxElections>? elections}) { return PostTaxRegistrationsRequestCountryOptionsUsStateSalesTax(
  elections: elections ?? this.elections,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTaxRegistrationsRequestCountryOptionsUsStateSalesTax &&
          listEquals(elections, other.elections); } 
@override int get hashCode { return Object.hashAll(elections).hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsUsStateSalesTax(elections: $elections)'; } 
 }
