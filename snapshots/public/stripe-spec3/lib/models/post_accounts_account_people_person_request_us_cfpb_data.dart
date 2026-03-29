// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_accounts_account_people_person_request_us_cfpb_data_ethnicity_details.dart';import 'post_accounts_account_people_person_request_us_cfpb_data_race_details.dart';/// Demographic data related to the person.
final class PostAccountsAccountPeoplePersonRequestUsCfpbData {const PostAccountsAccountPeoplePersonRequestUsCfpbData({this.ethnicityDetails, this.raceDetails, this.selfIdentifiedGender, });

factory PostAccountsAccountPeoplePersonRequestUsCfpbData.fromJson(Map<String, dynamic> json) { return PostAccountsAccountPeoplePersonRequestUsCfpbData(
  ethnicityDetails: json['ethnicity_details'] != null ? PostAccountsAccountPeoplePersonRequestUsCfpbDataEthnicityDetails.fromJson(json['ethnicity_details'] as Map<String, dynamic>) : null,
  raceDetails: json['race_details'] != null ? PostAccountsAccountPeoplePersonRequestUsCfpbDataRaceDetails.fromJson(json['race_details'] as Map<String, dynamic>) : null,
  selfIdentifiedGender: json['self_identified_gender'] as String?,
); }

final PostAccountsAccountPeoplePersonRequestUsCfpbDataEthnicityDetails? ethnicityDetails;

final PostAccountsAccountPeoplePersonRequestUsCfpbDataRaceDetails? raceDetails;

final String? selfIdentifiedGender;

Map<String, dynamic> toJson() { return {
  if (ethnicityDetails != null) 'ethnicity_details': ethnicityDetails?.toJson(),
  if (raceDetails != null) 'race_details': raceDetails?.toJson(),
  'self_identified_gender': ?selfIdentifiedGender,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'ethnicity_details', 'race_details', 'self_identified_gender'}.contains(key)); } 
PostAccountsAccountPeoplePersonRequestUsCfpbData copyWith({PostAccountsAccountPeoplePersonRequestUsCfpbDataEthnicityDetails Function()? ethnicityDetails, PostAccountsAccountPeoplePersonRequestUsCfpbDataRaceDetails Function()? raceDetails, String Function()? selfIdentifiedGender, }) { return PostAccountsAccountPeoplePersonRequestUsCfpbData(
  ethnicityDetails: ethnicityDetails != null ? ethnicityDetails() : this.ethnicityDetails,
  raceDetails: raceDetails != null ? raceDetails() : this.raceDetails,
  selfIdentifiedGender: selfIdentifiedGender != null ? selfIdentifiedGender() : this.selfIdentifiedGender,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountPeoplePersonRequestUsCfpbData &&
          ethnicityDetails == other.ethnicityDetails &&
          raceDetails == other.raceDetails &&
          selfIdentifiedGender == other.selfIdentifiedGender; } 
@override int get hashCode { return Object.hash(ethnicityDetails, raceDetails, selfIdentifiedGender); } 
@override String toString() { return 'PostAccountsAccountPeoplePersonRequestUsCfpbData(ethnicityDetails: $ethnicityDetails, raceDetails: $raceDetails, selfIdentifiedGender: $selfIdentifiedGender)'; } 
 }
