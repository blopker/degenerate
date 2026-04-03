// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'date_of_birth_specs6.dart';import 'post_accounts_account_persons_person_request_additional_tos_acceptances.dart';import 'post_accounts_account_persons_person_request_address.dart';import 'post_accounts_account_persons_person_request_address_kana.dart';import 'post_accounts_account_persons_person_request_address_kanji.dart';import 'post_accounts_account_persons_person_request_dob.dart';import 'post_accounts_account_persons_person_request_documents.dart';import 'post_accounts_account_persons_person_request_full_name_aliases.dart';import 'post_accounts_account_persons_person_request_metadata.dart';import 'post_accounts_account_persons_person_request_registered_address.dart';import 'post_accounts_account_persons_person_request_relationship.dart';import 'post_accounts_account_persons_person_request_us_cfpb_data.dart';import 'post_accounts_account_persons_person_request_verification.dart';/// Indicates if the person or any of their representatives, family members, or other closely related persons, declares that they hold or have held an important public job or function, in any jurisdiction.
@immutable final class PostAccountsAccountPersonsPersonRequestPoliticalExposure {const PostAccountsAccountPersonsPersonRequestPoliticalExposure._(this.value);

factory PostAccountsAccountPersonsPersonRequestPoliticalExposure.fromJson(String json) { return switch (json) {
  'existing' => existing,
  'none' => none,
  _ => PostAccountsAccountPersonsPersonRequestPoliticalExposure._(json),
}; }

static const PostAccountsAccountPersonsPersonRequestPoliticalExposure existing = PostAccountsAccountPersonsPersonRequestPoliticalExposure._('existing');

static const PostAccountsAccountPersonsPersonRequestPoliticalExposure none = PostAccountsAccountPersonsPersonRequestPoliticalExposure._('none');

static const List<PostAccountsAccountPersonsPersonRequestPoliticalExposure> values = [existing, none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsAccountPersonsPersonRequestPoliticalExposure && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsAccountPersonsPersonRequestPoliticalExposure($value)'; } 
 }
@immutable final class PostAccountsAccountPersonsPersonRequest {const PostAccountsAccountPersonsPersonRequest({this.additionalTosAcceptances, this.address, this.addressKana, this.addressKanji, this.dob, this.documents, this.email, this.expand, this.firstName, this.firstNameKana, this.firstNameKanji, this.fullNameAliases, this.gender, this.idNumber, this.idNumberSecondary, this.lastName, this.lastNameKana, this.lastNameKanji, this.maidenName, this.metadata, this.nationality, this.personToken, this.phone, this.politicalExposure, this.registeredAddress, this.relationship, this.ssnLast4, this.usCfpbData, this.verification, });

factory PostAccountsAccountPersonsPersonRequest.fromJson(Map<String, dynamic> json) { return PostAccountsAccountPersonsPersonRequest(
  additionalTosAcceptances: json['additional_tos_acceptances'] != null ? PostAccountsAccountPersonsPersonRequestAdditionalTosAcceptances.fromJson(json['additional_tos_acceptances'] as Map<String, dynamic>) : null,
  address: json['address'] != null ? PostAccountsAccountPersonsPersonRequestAddress.fromJson(json['address'] as Map<String, dynamic>) : null,
  addressKana: json['address_kana'] != null ? PostAccountsAccountPersonsPersonRequestAddressKana.fromJson(json['address_kana'] as Map<String, dynamic>) : null,
  addressKanji: json['address_kanji'] != null ? PostAccountsAccountPersonsPersonRequestAddressKanji.fromJson(json['address_kanji'] as Map<String, dynamic>) : null,
  dob: json['dob'] != null ? OneOf2.parse(json['dob'], fromA: (v) => DateOfBirthSpecs6.fromJson(v as Map<String, dynamic>), fromB: (v) => PostAccountsAccountPersonsPersonRequestDobVariant2.fromJson(v as String),) : null,
  documents: json['documents'] != null ? PostAccountsAccountPersonsPersonRequestDocuments.fromJson(json['documents'] as Map<String, dynamic>) : null,
  email: json['email'] as String?,
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  firstName: json['first_name'] as String?,
  firstNameKana: json['first_name_kana'] as String?,
  firstNameKanji: json['first_name_kanji'] as String?,
  fullNameAliases: json['full_name_aliases'] != null ? OneOf2.parse(json['full_name_aliases'], fromA: (v) => (v as List<dynamic>).map((e) => e as String).toList(), fromB: (v) => PostAccountsAccountPersonsPersonRequestFullNameAliasesVariant2.fromJson(v as String),) : null,
  gender: json['gender'] as String?,
  idNumber: json['id_number'] as String?,
  idNumberSecondary: json['id_number_secondary'] as String?,
  lastName: json['last_name'] as String?,
  lastNameKana: json['last_name_kana'] as String?,
  lastNameKanji: json['last_name_kanji'] as String?,
  maidenName: json['maiden_name'] as String?,
  metadata: json['metadata'] != null ? OneOf2.parse(json['metadata'], fromA: (v) => (v as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String)), fromB: (v) => PostAccountsAccountPersonsPersonRequestMetadataVariant2.fromJson(v as String),) : null,
  nationality: json['nationality'] as String?,
  personToken: json['person_token'] as String?,
  phone: json['phone'] as String?,
  politicalExposure: json['political_exposure'] != null ? PostAccountsAccountPersonsPersonRequestPoliticalExposure.fromJson(json['political_exposure'] as String) : null,
  registeredAddress: json['registered_address'] != null ? PostAccountsAccountPersonsPersonRequestRegisteredAddress.fromJson(json['registered_address'] as Map<String, dynamic>) : null,
  relationship: json['relationship'] != null ? PostAccountsAccountPersonsPersonRequestRelationship.fromJson(json['relationship'] as Map<String, dynamic>) : null,
  ssnLast4: json['ssn_last_4'] as String?,
  usCfpbData: json['us_cfpb_data'] != null ? PostAccountsAccountPersonsPersonRequestUsCfpbData.fromJson(json['us_cfpb_data'] as Map<String, dynamic>) : null,
  verification: json['verification'] != null ? PostAccountsAccountPersonsPersonRequestVerification.fromJson(json['verification'] as Map<String, dynamic>) : null,
); }

/// Details on the legal guardian's or authorizer's acceptance of the required Stripe agreements.
final PostAccountsAccountPersonsPersonRequestAdditionalTosAcceptances? additionalTosAcceptances;

/// The person's address.
final PostAccountsAccountPersonsPersonRequestAddress? address;

/// The Kana variation of the person's address (Japan only).
final PostAccountsAccountPersonsPersonRequestAddressKana? addressKana;

/// The Kanji variation of the person's address (Japan only).
final PostAccountsAccountPersonsPersonRequestAddressKanji? addressKanji;

/// The person's date of birth.
final PostAccountsAccountPersonsPersonRequestDob? dob;

/// Documents that may be submitted to satisfy various informational requests.
final PostAccountsAccountPersonsPersonRequestDocuments? documents;

/// The person's email address.
final String? email;

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// The person's first name.
final String? firstName;

/// The Kana variation of the person's first name (Japan only).
final String? firstNameKana;

/// The Kanji variation of the person's first name (Japan only).
final String? firstNameKanji;

/// A list of alternate names or aliases that the person is known by.
final PostAccountsAccountPersonsPersonRequestFullNameAliases? fullNameAliases;

/// The person's gender (International regulations require either "male" or "female").
final String? gender;

/// The person's ID number, as appropriate for their country. For example, a social security number in the U.S., social insurance number in Canada, etc. Instead of the number itself, you can also provide a [PII token provided by Stripe.js](https://docs.stripe.com/js/tokens/create_token?type=pii).
final String? idNumber;

/// The person's secondary ID number, as appropriate for their country, will be used for enhanced verification checks. In Thailand, this would be the laser code found on the back of an ID card. Instead of the number itself, you can also provide a [PII token provided by Stripe.js](https://docs.stripe.com/js/tokens/create_token?type=pii).
final String? idNumberSecondary;

/// The person's last name.
final String? lastName;

/// The Kana variation of the person's last name (Japan only).
final String? lastNameKana;

/// The Kanji variation of the person's last name (Japan only).
final String? lastNameKanji;

/// The person's maiden name.
final String? maidenName;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
final PostAccountsAccountPersonsPersonRequestMetadata? metadata;

/// The country where the person is a national. Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)), or "XX" if unavailable.
final String? nationality;

/// A [person token](https://docs.stripe.com/connect/account-tokens), used to securely provide details to the person.
final String? personToken;

/// The person's phone number.
final String? phone;

/// Indicates if the person or any of their representatives, family members, or other closely related persons, declares that they hold or have held an important public job or function, in any jurisdiction.
final PostAccountsAccountPersonsPersonRequestPoliticalExposure? politicalExposure;

/// The person's registered address.
final PostAccountsAccountPersonsPersonRequestRegisteredAddress? registeredAddress;

/// The relationship that this person has with the account's legal entity.
final PostAccountsAccountPersonsPersonRequestRelationship? relationship;

/// The last four digits of the person's Social Security number (U.S. only).
final String? ssnLast4;

/// Demographic data related to the person.
final PostAccountsAccountPersonsPersonRequestUsCfpbData? usCfpbData;

/// The person's verification status.
final PostAccountsAccountPersonsPersonRequestVerification? verification;

Map<String, dynamic> toJson() { return {
  if (additionalTosAcceptances != null) 'additional_tos_acceptances': additionalTosAcceptances?.toJson(),
  if (address != null) 'address': address?.toJson(),
  if (addressKana != null) 'address_kana': addressKana?.toJson(),
  if (addressKanji != null) 'address_kanji': addressKanji?.toJson(),
  if (dob != null) 'dob': dob?.toJson(),
  if (documents != null) 'documents': documents?.toJson(),
  'email': ?email,
  'expand': ?expand,
  'first_name': ?firstName,
  'first_name_kana': ?firstNameKana,
  'first_name_kanji': ?firstNameKanji,
  if (fullNameAliases != null) 'full_name_aliases': fullNameAliases?.toJson(),
  'gender': ?gender,
  'id_number': ?idNumber,
  'id_number_secondary': ?idNumberSecondary,
  'last_name': ?lastName,
  'last_name_kana': ?lastNameKana,
  'last_name_kanji': ?lastNameKanji,
  'maiden_name': ?maidenName,
  if (metadata != null) 'metadata': metadata?.toJson(),
  'nationality': ?nationality,
  'person_token': ?personToken,
  'phone': ?phone,
  if (politicalExposure != null) 'political_exposure': politicalExposure?.toJson(),
  if (registeredAddress != null) 'registered_address': registeredAddress?.toJson(),
  if (relationship != null) 'relationship': relationship?.toJson(),
  'ssn_last_4': ?ssnLast4,
  if (usCfpbData != null) 'us_cfpb_data': usCfpbData?.toJson(),
  if (verification != null) 'verification': verification?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'additional_tos_acceptances', 'address', 'address_kana', 'address_kanji', 'dob', 'documents', 'email', 'expand', 'first_name', 'first_name_kana', 'first_name_kanji', 'full_name_aliases', 'gender', 'id_number', 'id_number_secondary', 'last_name', 'last_name_kana', 'last_name_kanji', 'maiden_name', 'metadata', 'nationality', 'person_token', 'phone', 'political_exposure', 'registered_address', 'relationship', 'ssn_last_4', 'us_cfpb_data', 'verification'}.contains(key)); } 
PostAccountsAccountPersonsPersonRequest copyWith({PostAccountsAccountPersonsPersonRequestAdditionalTosAcceptances Function()? additionalTosAcceptances, PostAccountsAccountPersonsPersonRequestAddress Function()? address, PostAccountsAccountPersonsPersonRequestAddressKana Function()? addressKana, PostAccountsAccountPersonsPersonRequestAddressKanji Function()? addressKanji, PostAccountsAccountPersonsPersonRequestDob Function()? dob, PostAccountsAccountPersonsPersonRequestDocuments Function()? documents, String Function()? email, List<String> Function()? expand, String Function()? firstName, String Function()? firstNameKana, String Function()? firstNameKanji, PostAccountsAccountPersonsPersonRequestFullNameAliases Function()? fullNameAliases, String Function()? gender, String Function()? idNumber, String Function()? idNumberSecondary, String Function()? lastName, String Function()? lastNameKana, String Function()? lastNameKanji, String Function()? maidenName, PostAccountsAccountPersonsPersonRequestMetadata Function()? metadata, String Function()? nationality, String Function()? personToken, String Function()? phone, PostAccountsAccountPersonsPersonRequestPoliticalExposure Function()? politicalExposure, PostAccountsAccountPersonsPersonRequestRegisteredAddress Function()? registeredAddress, PostAccountsAccountPersonsPersonRequestRelationship Function()? relationship, String Function()? ssnLast4, PostAccountsAccountPersonsPersonRequestUsCfpbData Function()? usCfpbData, PostAccountsAccountPersonsPersonRequestVerification Function()? verification, }) { return PostAccountsAccountPersonsPersonRequest(
  additionalTosAcceptances: additionalTosAcceptances != null ? additionalTosAcceptances() : this.additionalTosAcceptances,
  address: address != null ? address() : this.address,
  addressKana: addressKana != null ? addressKana() : this.addressKana,
  addressKanji: addressKanji != null ? addressKanji() : this.addressKanji,
  dob: dob != null ? dob() : this.dob,
  documents: documents != null ? documents() : this.documents,
  email: email != null ? email() : this.email,
  expand: expand != null ? expand() : this.expand,
  firstName: firstName != null ? firstName() : this.firstName,
  firstNameKana: firstNameKana != null ? firstNameKana() : this.firstNameKana,
  firstNameKanji: firstNameKanji != null ? firstNameKanji() : this.firstNameKanji,
  fullNameAliases: fullNameAliases != null ? fullNameAliases() : this.fullNameAliases,
  gender: gender != null ? gender() : this.gender,
  idNumber: idNumber != null ? idNumber() : this.idNumber,
  idNumberSecondary: idNumberSecondary != null ? idNumberSecondary() : this.idNumberSecondary,
  lastName: lastName != null ? lastName() : this.lastName,
  lastNameKana: lastNameKana != null ? lastNameKana() : this.lastNameKana,
  lastNameKanji: lastNameKanji != null ? lastNameKanji() : this.lastNameKanji,
  maidenName: maidenName != null ? maidenName() : this.maidenName,
  metadata: metadata != null ? metadata() : this.metadata,
  nationality: nationality != null ? nationality() : this.nationality,
  personToken: personToken != null ? personToken() : this.personToken,
  phone: phone != null ? phone() : this.phone,
  politicalExposure: politicalExposure != null ? politicalExposure() : this.politicalExposure,
  registeredAddress: registeredAddress != null ? registeredAddress() : this.registeredAddress,
  relationship: relationship != null ? relationship() : this.relationship,
  ssnLast4: ssnLast4 != null ? ssnLast4() : this.ssnLast4,
  usCfpbData: usCfpbData != null ? usCfpbData() : this.usCfpbData,
  verification: verification != null ? verification() : this.verification,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountPersonsPersonRequest &&
          additionalTosAcceptances == other.additionalTosAcceptances &&
          address == other.address &&
          addressKana == other.addressKana &&
          addressKanji == other.addressKanji &&
          dob == other.dob &&
          documents == other.documents &&
          email == other.email &&
          listEquals(expand, other.expand) &&
          firstName == other.firstName &&
          firstNameKana == other.firstNameKana &&
          firstNameKanji == other.firstNameKanji &&
          fullNameAliases == other.fullNameAliases &&
          gender == other.gender &&
          idNumber == other.idNumber &&
          idNumberSecondary == other.idNumberSecondary &&
          lastName == other.lastName &&
          lastNameKana == other.lastNameKana &&
          lastNameKanji == other.lastNameKanji &&
          maidenName == other.maidenName &&
          metadata == other.metadata &&
          nationality == other.nationality &&
          personToken == other.personToken &&
          phone == other.phone &&
          politicalExposure == other.politicalExposure &&
          registeredAddress == other.registeredAddress &&
          relationship == other.relationship &&
          ssnLast4 == other.ssnLast4 &&
          usCfpbData == other.usCfpbData &&
          verification == other.verification; } 
@override int get hashCode { return Object.hashAll([additionalTosAcceptances, address, addressKana, addressKanji, dob, documents, email, Object.hashAll(expand ?? const []), firstName, firstNameKana, firstNameKanji, fullNameAliases, gender, idNumber, idNumberSecondary, lastName, lastNameKana, lastNameKanji, maidenName, metadata, nationality, personToken, phone, politicalExposure, registeredAddress, relationship, ssnLast4, usCfpbData, verification]); } 
@override String toString() { return 'PostAccountsAccountPersonsPersonRequest(additionalTosAcceptances: $additionalTosAcceptances, address: $address, addressKana: $addressKana, addressKanji: $addressKanji, dob: $dob, documents: $documents, email: $email, expand: $expand, firstName: $firstName, firstNameKana: $firstNameKana, firstNameKanji: $firstNameKanji, fullNameAliases: $fullNameAliases, gender: $gender, idNumber: $idNumber, idNumberSecondary: $idNumberSecondary, lastName: $lastName, lastNameKana: $lastNameKana, lastNameKanji: $lastNameKanji, maidenName: $maidenName, metadata: $metadata, nationality: $nationality, personToken: $personToken, phone: $phone, politicalExposure: $politicalExposure, registeredAddress: $registeredAddress, relationship: $relationship, ssnLast4: $ssnLast4, usCfpbData: $usCfpbData, verification: $verification)'; } 
 }
