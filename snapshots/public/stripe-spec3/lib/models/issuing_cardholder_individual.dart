// GENERATED CODE - DO NOT MODIFY BY HAND

import 'issuing_cardholder_individual_card_issuing.dart';import 'issuing_cardholder_individual_dob2.dart';import 'issuing_cardholder_individual_verification.dart';/// 
final class IssuingCardholderIndividual {const IssuingCardholderIndividual({this.cardIssuing, this.dob, this.firstName, this.lastName, this.verification, });

factory IssuingCardholderIndividual.fromJson(Map<String, dynamic> json) { return IssuingCardholderIndividual(
  cardIssuing: json['card_issuing'] != null ? IssuingCardholderIndividualCardIssuing.fromJson(json['card_issuing'] as Map<String, dynamic>) : null,
  dob: json['dob'] != null ? IssuingCardholderIndividualDob2.fromJson(json['dob'] as Map<String, dynamic>) : null,
  firstName: json['first_name'] as String?,
  lastName: json['last_name'] as String?,
  verification: json['verification'] != null ? IssuingCardholderIndividualVerification.fromJson(json['verification'] as Map<String, dynamic>) : null,
); }

/// Information related to the card_issuing program for this cardholder.
final IssuingCardholderIndividualCardIssuing? cardIssuing;

/// The date of birth of this cardholder.
final IssuingCardholderIndividualDob2? dob;

/// The first name of this cardholder. Required before activating Cards. This field cannot contain any numbers, special characters (except periods, commas, hyphens, spaces and apostrophes) or non-latin letters.
final String? firstName;

/// The last name of this cardholder. Required before activating Cards. This field cannot contain any numbers, special characters (except periods, commas, hyphens, spaces and apostrophes) or non-latin letters.
final String? lastName;

/// Government-issued ID document for this cardholder.
final IssuingCardholderIndividualVerification? verification;

Map<String, dynamic> toJson() { return {
  if (cardIssuing != null) 'card_issuing': cardIssuing?.toJson(),
  if (dob != null) 'dob': dob?.toJson(),
  'first_name': ?firstName,
  'last_name': ?lastName,
  if (verification != null) 'verification': verification?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
IssuingCardholderIndividual copyWith({IssuingCardholderIndividualCardIssuing? Function()? cardIssuing, IssuingCardholderIndividualDob2? Function()? dob, String? Function()? firstName, String? Function()? lastName, IssuingCardholderIndividualVerification? Function()? verification, }) { return IssuingCardholderIndividual(
  cardIssuing: cardIssuing != null ? cardIssuing() : this.cardIssuing,
  dob: dob != null ? dob() : this.dob,
  firstName: firstName != null ? firstName() : this.firstName,
  lastName: lastName != null ? lastName() : this.lastName,
  verification: verification != null ? verification() : this.verification,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingCardholderIndividual &&
          cardIssuing == other.cardIssuing &&
          dob == other.dob &&
          firstName == other.firstName &&
          lastName == other.lastName &&
          verification == other.verification; } 
@override int get hashCode { return Object.hash(cardIssuing, dob, firstName, lastName, verification); } 
@override String toString() { return 'IssuingCardholderIndividual(cardIssuing: $cardIssuing, dob: $dob, firstName: $firstName, lastName: $lastName, verification: $verification)'; } 
 }
