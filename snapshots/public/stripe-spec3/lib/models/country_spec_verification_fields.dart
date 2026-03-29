// GENERATED CODE - DO NOT MODIFY BY HAND

import 'country_spec_verification_field_details.dart';/// 
final class CountrySpecVerificationFields {const CountrySpecVerificationFields({required this.company, required this.individual, });

factory CountrySpecVerificationFields.fromJson(Map<String, dynamic> json) { return CountrySpecVerificationFields(
  company: CountrySpecVerificationFieldDetails.fromJson(json['company'] as Map<String, dynamic>),
  individual: CountrySpecVerificationFieldDetails.fromJson(json['individual'] as Map<String, dynamic>),
); }

final CountrySpecVerificationFieldDetails company;

final CountrySpecVerificationFieldDetails individual;

Map<String, dynamic> toJson() { return {
  'company': company.toJson(),
  'individual': individual.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('company') &&
      json.containsKey('individual'); } 
CountrySpecVerificationFields copyWith({CountrySpecVerificationFieldDetails? company, CountrySpecVerificationFieldDetails? individual, }) { return CountrySpecVerificationFields(
  company: company ?? this.company,
  individual: individual ?? this.individual,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CountrySpecVerificationFields &&
          company == other.company &&
          individual == other.individual; } 
@override int get hashCode { return Object.hash(company, individual); } 
@override String toString() { return 'CountrySpecVerificationFields(company: $company, individual: $individual)'; } 
 }
