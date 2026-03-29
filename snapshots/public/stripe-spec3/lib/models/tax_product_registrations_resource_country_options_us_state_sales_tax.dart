// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tax_product_registrations_resource_country_options_us_state_sales_tax_election.dart';/// 
final class TaxProductRegistrationsResourceCountryOptionsUsStateSalesTax {const TaxProductRegistrationsResourceCountryOptionsUsStateSalesTax({this.elections});

factory TaxProductRegistrationsResourceCountryOptionsUsStateSalesTax.fromJson(Map<String, dynamic> json) { return TaxProductRegistrationsResourceCountryOptionsUsStateSalesTax(
  elections: (json['elections'] as List<dynamic>?)?.map((e) => TaxProductRegistrationsResourceCountryOptionsUsStateSalesTaxElection.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Elections for the state sales tax registration.
final List<TaxProductRegistrationsResourceCountryOptionsUsStateSalesTaxElection>? elections;

Map<String, dynamic> toJson() { return {
  if (elections != null) 'elections': elections?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'elections'}.contains(key)); } 
TaxProductRegistrationsResourceCountryOptionsUsStateSalesTax copyWith({List<TaxProductRegistrationsResourceCountryOptionsUsStateSalesTaxElection> Function()? elections}) { return TaxProductRegistrationsResourceCountryOptionsUsStateSalesTax(
  elections: elections != null ? elections() : this.elections,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TaxProductRegistrationsResourceCountryOptionsUsStateSalesTax &&
          listEquals(elections, other.elections); } 
@override int get hashCode { return Object.hashAll(elections ?? const []).hashCode; } 
@override String toString() { return 'TaxProductRegistrationsResourceCountryOptionsUsStateSalesTax(elections: $elections)'; } 
 }
