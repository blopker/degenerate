// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_issuing_cardholders_cardholder_request_individual_card_issuing.dart';import 'post_issuing_cardholders_cardholder_request_individual_dob.dart';import 'post_issuing_cardholders_cardholder_request_individual_verification.dart';/// Additional information about an `individual` cardholder.
@immutable final class PostIssuingCardholdersCardholderRequestIndividual {const PostIssuingCardholdersCardholderRequestIndividual({this.cardIssuing, this.dob, this.firstName, this.lastName, this.verification, });

factory PostIssuingCardholdersCardholderRequestIndividual.fromJson(Map<String, dynamic> json) { return PostIssuingCardholdersCardholderRequestIndividual(
  cardIssuing: json['card_issuing'] != null ? PostIssuingCardholdersCardholderRequestIndividualCardIssuing.fromJson(json['card_issuing'] as Map<String, dynamic>) : null,
  dob: json['dob'] != null ? PostIssuingCardholdersCardholderRequestIndividualDob.fromJson(json['dob'] as Map<String, dynamic>) : null,
  firstName: json['first_name'] as String?,
  lastName: json['last_name'] as String?,
  verification: json['verification'] != null ? PostIssuingCardholdersCardholderRequestIndividualVerification.fromJson(json['verification'] as Map<String, dynamic>) : null,
); }

final PostIssuingCardholdersCardholderRequestIndividualCardIssuing? cardIssuing;

final PostIssuingCardholdersCardholderRequestIndividualDob? dob;

final String? firstName;

final String? lastName;

final PostIssuingCardholdersCardholderRequestIndividualVerification? verification;

Map<String, dynamic> toJson() { return {
  if (cardIssuing != null) 'card_issuing': cardIssuing?.toJson(),
  if (dob != null) 'dob': dob?.toJson(),
  'first_name': ?firstName,
  'last_name': ?lastName,
  if (verification != null) 'verification': verification?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'card_issuing', 'dob', 'first_name', 'last_name', 'verification'}.contains(key)); } 
PostIssuingCardholdersCardholderRequestIndividual copyWith({PostIssuingCardholdersCardholderRequestIndividualCardIssuing Function()? cardIssuing, PostIssuingCardholdersCardholderRequestIndividualDob Function()? dob, String Function()? firstName, String Function()? lastName, PostIssuingCardholdersCardholderRequestIndividualVerification Function()? verification, }) { return PostIssuingCardholdersCardholderRequestIndividual(
  cardIssuing: cardIssuing != null ? cardIssuing() : this.cardIssuing,
  dob: dob != null ? dob() : this.dob,
  firstName: firstName != null ? firstName() : this.firstName,
  lastName: lastName != null ? lastName() : this.lastName,
  verification: verification != null ? verification() : this.verification,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostIssuingCardholdersCardholderRequestIndividual &&
          cardIssuing == other.cardIssuing &&
          dob == other.dob &&
          firstName == other.firstName &&
          lastName == other.lastName &&
          verification == other.verification; } 
@override int get hashCode { return Object.hash(cardIssuing, dob, firstName, lastName, verification); } 
@override String toString() { return 'PostIssuingCardholdersCardholderRequestIndividual(cardIssuing: $cardIssuing, dob: $dob, firstName: $firstName, lastName: $lastName, verification: $verification)'; } 
 }
