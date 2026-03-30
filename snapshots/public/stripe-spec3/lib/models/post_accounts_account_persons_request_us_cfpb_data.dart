// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_accounts_account_persons_request_us_cfpb_data_ethnicity_details.dart';import 'post_accounts_account_persons_request_us_cfpb_data_race_details.dart';/// Demographic data related to the person.
final class PostAccountsAccountPersonsRequestUsCfpbData {const PostAccountsAccountPersonsRequestUsCfpbData({this.ethnicityDetails, this.raceDetails, this.selfIdentifiedGender, });

factory PostAccountsAccountPersonsRequestUsCfpbData.fromJson(Map<String, dynamic> json) { return PostAccountsAccountPersonsRequestUsCfpbData(
  ethnicityDetails: json['ethnicity_details'] != null ? PostAccountsAccountPersonsRequestUsCfpbDataEthnicityDetails.fromJson(json['ethnicity_details'] as Map<String, dynamic>) : null,
  raceDetails: json['race_details'] != null ? PostAccountsAccountPersonsRequestUsCfpbDataRaceDetails.fromJson(json['race_details'] as Map<String, dynamic>) : null,
  selfIdentifiedGender: json['self_identified_gender'] as String?,
); }

final PostAccountsAccountPersonsRequestUsCfpbDataEthnicityDetails? ethnicityDetails;

final PostAccountsAccountPersonsRequestUsCfpbDataRaceDetails? raceDetails;

final String? selfIdentifiedGender;

Map<String, dynamic> toJson() { return {
  if (ethnicityDetails != null) 'ethnicity_details': ethnicityDetails?.toJson(),
  if (raceDetails != null) 'race_details': raceDetails?.toJson(),
  'self_identified_gender': ?selfIdentifiedGender,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'ethnicity_details', 'race_details', 'self_identified_gender'}.contains(key)); } 
PostAccountsAccountPersonsRequestUsCfpbData copyWith({PostAccountsAccountPersonsRequestUsCfpbDataEthnicityDetails Function()? ethnicityDetails, PostAccountsAccountPersonsRequestUsCfpbDataRaceDetails Function()? raceDetails, String Function()? selfIdentifiedGender, }) { return PostAccountsAccountPersonsRequestUsCfpbData(
  ethnicityDetails: ethnicityDetails != null ? ethnicityDetails() : this.ethnicityDetails,
  raceDetails: raceDetails != null ? raceDetails() : this.raceDetails,
  selfIdentifiedGender: selfIdentifiedGender != null ? selfIdentifiedGender() : this.selfIdentifiedGender,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountPersonsRequestUsCfpbData &&
          ethnicityDetails == other.ethnicityDetails &&
          raceDetails == other.raceDetails &&
          selfIdentifiedGender == other.selfIdentifiedGender; } 
@override int get hashCode { return Object.hash(ethnicityDetails, raceDetails, selfIdentifiedGender); } 
@override String toString() { return 'PostAccountsAccountPersonsRequestUsCfpbData(ethnicityDetails: $ethnicityDetails, raceDetails: $raceDetails, selfIdentifiedGender: $selfIdentifiedGender)'; } 
 }
