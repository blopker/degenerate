// GENERATED CODE - DO NOT MODIFY BY HAND

import 'person_race_details.dart';/// The persons race details
final class PersonUsCfpbDataRaceDetails {const PersonUsCfpbDataRaceDetails({this.personRaceDetails});

factory PersonUsCfpbDataRaceDetails.fromJson(Map<String, dynamic> json) { return PersonUsCfpbDataRaceDetails(
  personRaceDetails: PersonRaceDetails.canParse(json) ? PersonRaceDetails.fromJson(json) : null,
); }

final PersonRaceDetails? personRaceDetails;

/// At least one variant must be present.
bool get isValid { return personRaceDetails != null; } 
Map<String, dynamic> toJson() { return {
  ...?personRaceDetails?.toJson(),
}; } 
 }
