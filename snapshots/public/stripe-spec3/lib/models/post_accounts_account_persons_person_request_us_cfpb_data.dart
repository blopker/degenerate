// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_accounts_account_persons_person_request_us_cfpb_data_ethnicity_details.dart';import 'post_accounts_account_persons_person_request_us_cfpb_data_race_details.dart';/// Demographic data related to the person.
@immutable final class PostAccountsAccountPersonsPersonRequestUsCfpbData {const PostAccountsAccountPersonsPersonRequestUsCfpbData({this.ethnicityDetails, this.raceDetails, this.selfIdentifiedGender, });

factory PostAccountsAccountPersonsPersonRequestUsCfpbData.fromJson(Map<String, dynamic> json) { return PostAccountsAccountPersonsPersonRequestUsCfpbData(
  ethnicityDetails: json['ethnicity_details'] != null ? PostAccountsAccountPersonsPersonRequestUsCfpbDataEthnicityDetails.fromJson(json['ethnicity_details'] as Map<String, dynamic>) : null,
  raceDetails: json['race_details'] != null ? PostAccountsAccountPersonsPersonRequestUsCfpbDataRaceDetails.fromJson(json['race_details'] as Map<String, dynamic>) : null,
  selfIdentifiedGender: json['self_identified_gender'] as String?,
); }

final PostAccountsAccountPersonsPersonRequestUsCfpbDataEthnicityDetails? ethnicityDetails;

final PostAccountsAccountPersonsPersonRequestUsCfpbDataRaceDetails? raceDetails;

final String? selfIdentifiedGender;

Map<String, dynamic> toJson() { return {
  if (ethnicityDetails != null) 'ethnicity_details': ethnicityDetails?.toJson(),
  if (raceDetails != null) 'race_details': raceDetails?.toJson(),
  'self_identified_gender': ?selfIdentifiedGender,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'ethnicity_details', 'race_details', 'self_identified_gender'}.contains(key)); } 
PostAccountsAccountPersonsPersonRequestUsCfpbData copyWith({PostAccountsAccountPersonsPersonRequestUsCfpbDataEthnicityDetails Function()? ethnicityDetails, PostAccountsAccountPersonsPersonRequestUsCfpbDataRaceDetails Function()? raceDetails, String Function()? selfIdentifiedGender, }) { return PostAccountsAccountPersonsPersonRequestUsCfpbData(
  ethnicityDetails: ethnicityDetails != null ? ethnicityDetails() : this.ethnicityDetails,
  raceDetails: raceDetails != null ? raceDetails() : this.raceDetails,
  selfIdentifiedGender: selfIdentifiedGender != null ? selfIdentifiedGender() : this.selfIdentifiedGender,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountPersonsPersonRequestUsCfpbData &&
          ethnicityDetails == other.ethnicityDetails &&
          raceDetails == other.raceDetails &&
          selfIdentifiedGender == other.selfIdentifiedGender; } 
@override int get hashCode { return Object.hash(ethnicityDetails, raceDetails, selfIdentifiedGender); } 
@override String toString() { return 'PostAccountsAccountPersonsPersonRequestUsCfpbData(ethnicityDetails: $ethnicityDetails, raceDetails: $raceDetails, selfIdentifiedGender: $selfIdentifiedGender)'; } 
 }
