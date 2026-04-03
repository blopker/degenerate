// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The type of the election for the state sales tax registration.
@immutable final class TaxProductRegistrationsResourceCountryOptionsUsStateSalesTaxElectionType {const TaxProductRegistrationsResourceCountryOptionsUsStateSalesTaxElectionType._(this.value);

factory TaxProductRegistrationsResourceCountryOptionsUsStateSalesTaxElectionType.fromJson(String json) { return switch (json) {
  'local_use_tax' => localUseTax,
  'simplified_sellers_use_tax' => simplifiedSellersUseTax,
  'single_local_use_tax' => singleLocalUseTax,
  _ => TaxProductRegistrationsResourceCountryOptionsUsStateSalesTaxElectionType._(json),
}; }

static const TaxProductRegistrationsResourceCountryOptionsUsStateSalesTaxElectionType localUseTax = TaxProductRegistrationsResourceCountryOptionsUsStateSalesTaxElectionType._('local_use_tax');

static const TaxProductRegistrationsResourceCountryOptionsUsStateSalesTaxElectionType simplifiedSellersUseTax = TaxProductRegistrationsResourceCountryOptionsUsStateSalesTaxElectionType._('simplified_sellers_use_tax');

static const TaxProductRegistrationsResourceCountryOptionsUsStateSalesTaxElectionType singleLocalUseTax = TaxProductRegistrationsResourceCountryOptionsUsStateSalesTaxElectionType._('single_local_use_tax');

static const List<TaxProductRegistrationsResourceCountryOptionsUsStateSalesTaxElectionType> values = [localUseTax, simplifiedSellersUseTax, singleLocalUseTax];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TaxProductRegistrationsResourceCountryOptionsUsStateSalesTaxElectionType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TaxProductRegistrationsResourceCountryOptionsUsStateSalesTaxElectionType($value)'; } 
 }
/// 
@immutable final class TaxProductRegistrationsResourceCountryOptionsUsStateSalesTaxElection {const TaxProductRegistrationsResourceCountryOptionsUsStateSalesTaxElection({required this.type, this.jurisdiction, });

factory TaxProductRegistrationsResourceCountryOptionsUsStateSalesTaxElection.fromJson(Map<String, dynamic> json) { return TaxProductRegistrationsResourceCountryOptionsUsStateSalesTaxElection(
  jurisdiction: json['jurisdiction'] as String?,
  type: TaxProductRegistrationsResourceCountryOptionsUsStateSalesTaxElectionType.fromJson(json['type'] as String),
); }

/// A [FIPS code](https://www.census.gov/library/reference/code-lists/ansi.html) representing the local jurisdiction.
final String? jurisdiction;

/// The type of the election for the state sales tax registration.
final TaxProductRegistrationsResourceCountryOptionsUsStateSalesTaxElectionType type;

Map<String, dynamic> toJson() { return {
  'jurisdiction': ?jurisdiction,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
TaxProductRegistrationsResourceCountryOptionsUsStateSalesTaxElection copyWith({String Function()? jurisdiction, TaxProductRegistrationsResourceCountryOptionsUsStateSalesTaxElectionType? type, }) { return TaxProductRegistrationsResourceCountryOptionsUsStateSalesTaxElection(
  jurisdiction: jurisdiction != null ? jurisdiction() : this.jurisdiction,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TaxProductRegistrationsResourceCountryOptionsUsStateSalesTaxElection &&
          jurisdiction == other.jurisdiction &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jurisdiction, type); } 
@override String toString() { return 'TaxProductRegistrationsResourceCountryOptionsUsStateSalesTaxElection(jurisdiction: $jurisdiction, type: $type)'; } 
 }
