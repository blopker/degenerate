// GENERATED CODE - DO NOT MODIFY BY HAND

import 'person_ethnicity_details.dart';/// The persons ethnicity details
final class PersonUsCfpbDataEthnicityDetails {const PersonUsCfpbDataEthnicityDetails({this.personEthnicityDetails});

factory PersonUsCfpbDataEthnicityDetails.fromJson(Map<String, dynamic> json) { return PersonUsCfpbDataEthnicityDetails(
  personEthnicityDetails: PersonEthnicityDetails.canParse(json) ? PersonEthnicityDetails.fromJson(json) : null,
); }

final PersonEthnicityDetails? personEthnicityDetails;

/// At least one variant must be present.
bool get isValid { return personEthnicityDetails != null; } 
Map<String, dynamic> toJson() { return {
  ...?personEthnicityDetails?.toJson(),
}; } 
 }
