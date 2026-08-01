// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'issuing_authorization_authentication_exemption.dart';import 'issuing_authorization_three_d_secure.dart';/// Whether the cardholder provided an address first line and if it matched the cardholder’s `billing.address.line1`.
@immutable final class IssuingAuthorizationVerificationDataAddressLine1Check {const IssuingAuthorizationVerificationDataAddressLine1Check._(this.value);

factory IssuingAuthorizationVerificationDataAddressLine1Check.fromJson(String json) { return switch (json) {
  'match' => match,
  'mismatch' => mismatch,
  'not_provided' => notProvided,
  _ => IssuingAuthorizationVerificationDataAddressLine1Check._(json),
}; }

static const IssuingAuthorizationVerificationDataAddressLine1Check match = IssuingAuthorizationVerificationDataAddressLine1Check._('match');

static const IssuingAuthorizationVerificationDataAddressLine1Check mismatch = IssuingAuthorizationVerificationDataAddressLine1Check._('mismatch');

static const IssuingAuthorizationVerificationDataAddressLine1Check notProvided = IssuingAuthorizationVerificationDataAddressLine1Check._('not_provided');

static const List<IssuingAuthorizationVerificationDataAddressLine1Check> values = [match, mismatch, notProvided];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuingAuthorizationVerificationDataAddressLine1Check && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IssuingAuthorizationVerificationDataAddressLine1Check($value)'; } 
 }
/// Whether the cardholder provided a postal code and if it matched the cardholder’s `billing.address.postal_code`.
@immutable final class IssuingAuthorizationVerificationDataAddressPostalCodeCheck {const IssuingAuthorizationVerificationDataAddressPostalCodeCheck._(this.value);

factory IssuingAuthorizationVerificationDataAddressPostalCodeCheck.fromJson(String json) { return switch (json) {
  'match' => match,
  'mismatch' => mismatch,
  'not_provided' => notProvided,
  _ => IssuingAuthorizationVerificationDataAddressPostalCodeCheck._(json),
}; }

static const IssuingAuthorizationVerificationDataAddressPostalCodeCheck match = IssuingAuthorizationVerificationDataAddressPostalCodeCheck._('match');

static const IssuingAuthorizationVerificationDataAddressPostalCodeCheck mismatch = IssuingAuthorizationVerificationDataAddressPostalCodeCheck._('mismatch');

static const IssuingAuthorizationVerificationDataAddressPostalCodeCheck notProvided = IssuingAuthorizationVerificationDataAddressPostalCodeCheck._('not_provided');

static const List<IssuingAuthorizationVerificationDataAddressPostalCodeCheck> values = [match, mismatch, notProvided];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuingAuthorizationVerificationDataAddressPostalCodeCheck && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IssuingAuthorizationVerificationDataAddressPostalCodeCheck($value)'; } 
 }
/// Whether the cardholder provided a CVC and if it matched Stripe’s record.
@immutable final class IssuingAuthorizationVerificationDataCvcCheck {const IssuingAuthorizationVerificationDataCvcCheck._(this.value);

factory IssuingAuthorizationVerificationDataCvcCheck.fromJson(String json) { return switch (json) {
  'match' => match,
  'mismatch' => mismatch,
  'not_provided' => notProvided,
  _ => IssuingAuthorizationVerificationDataCvcCheck._(json),
}; }

static const IssuingAuthorizationVerificationDataCvcCheck match = IssuingAuthorizationVerificationDataCvcCheck._('match');

static const IssuingAuthorizationVerificationDataCvcCheck mismatch = IssuingAuthorizationVerificationDataCvcCheck._('mismatch');

static const IssuingAuthorizationVerificationDataCvcCheck notProvided = IssuingAuthorizationVerificationDataCvcCheck._('not_provided');

static const List<IssuingAuthorizationVerificationDataCvcCheck> values = [match, mismatch, notProvided];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuingAuthorizationVerificationDataCvcCheck && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IssuingAuthorizationVerificationDataCvcCheck($value)'; } 
 }
/// Whether the cardholder provided an expiry date and if it matched Stripe’s record.
@immutable final class IssuingAuthorizationVerificationDataExpiryCheck {const IssuingAuthorizationVerificationDataExpiryCheck._(this.value);

factory IssuingAuthorizationVerificationDataExpiryCheck.fromJson(String json) { return switch (json) {
  'match' => match,
  'mismatch' => mismatch,
  'not_provided' => notProvided,
  _ => IssuingAuthorizationVerificationDataExpiryCheck._(json),
}; }

static const IssuingAuthorizationVerificationDataExpiryCheck match = IssuingAuthorizationVerificationDataExpiryCheck._('match');

static const IssuingAuthorizationVerificationDataExpiryCheck mismatch = IssuingAuthorizationVerificationDataExpiryCheck._('mismatch');

static const IssuingAuthorizationVerificationDataExpiryCheck notProvided = IssuingAuthorizationVerificationDataExpiryCheck._('not_provided');

static const List<IssuingAuthorizationVerificationDataExpiryCheck> values = [match, mismatch, notProvided];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuingAuthorizationVerificationDataExpiryCheck && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IssuingAuthorizationVerificationDataExpiryCheck($value)'; } 
 }
/// 
@immutable final class IssuingAuthorizationVerificationData {const IssuingAuthorizationVerificationData({required this.addressLine1Check, required this.addressPostalCodeCheck, required this.cvcCheck, required this.expiryCheck, this.authenticationExemption = const Omittable.absent(), this.postalCode = const Omittable.absent(), this.threeDSecure = const Omittable.absent(), });

factory IssuingAuthorizationVerificationData.fromJson(Map<String, dynamic> json) { return IssuingAuthorizationVerificationData(
  addressLine1Check: IssuingAuthorizationVerificationDataAddressLine1Check.fromJson(json['address_line1_check'] as String),
  addressPostalCodeCheck: IssuingAuthorizationVerificationDataAddressPostalCodeCheck.fromJson(json['address_postal_code_check'] as String),
  authenticationExemption: json.containsKey('authentication_exemption') ? Omittable(json['authentication_exemption'] != null ? IssuingAuthorizationAuthenticationExemption.fromJson(json['authentication_exemption'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  cvcCheck: IssuingAuthorizationVerificationDataCvcCheck.fromJson(json['cvc_check'] as String),
  expiryCheck: IssuingAuthorizationVerificationDataExpiryCheck.fromJson(json['expiry_check'] as String),
  postalCode: json.containsKey('postal_code') ? Omittable(json['postal_code'] as String?) : const Omittable.absent(),
  threeDSecure: json.containsKey('three_d_secure') ? Omittable(json['three_d_secure'] != null ? IssuingAuthorizationThreeDSecure.fromJson(json['three_d_secure'] as Map<String, dynamic>) : null) : const Omittable.absent(),
); }

/// Whether the cardholder provided an address first line and if it matched the cardholder’s `billing.address.line1`.
final IssuingAuthorizationVerificationDataAddressLine1Check addressLine1Check;

/// Whether the cardholder provided a postal code and if it matched the cardholder’s `billing.address.postal_code`.
final IssuingAuthorizationVerificationDataAddressPostalCodeCheck addressPostalCodeCheck;

/// The exemption applied to this authorization.
final Omittable<IssuingAuthorizationAuthenticationExemption?> authenticationExemption;

/// Whether the cardholder provided a CVC and if it matched Stripe’s record.
final IssuingAuthorizationVerificationDataCvcCheck cvcCheck;

/// Whether the cardholder provided an expiry date and if it matched Stripe’s record.
final IssuingAuthorizationVerificationDataExpiryCheck expiryCheck;

/// The postal code submitted as part of the authorization used for postal code verification.
final Omittable<String?> postalCode;

/// 3D Secure details.
final Omittable<IssuingAuthorizationThreeDSecure?> threeDSecure;

Map<String, dynamic> toJson() { return {
  'address_line1_check': addressLine1Check.toJson(),
  'address_postal_code_check': addressPostalCodeCheck.toJson(),
  if (authenticationExemption.isPresent) 'authentication_exemption': authenticationExemption.value?.toJson(),
  'cvc_check': cvcCheck.toJson(),
  'expiry_check': expiryCheck.toJson(),
  if (postalCode.isPresent) 'postal_code': postalCode.value,
  if (threeDSecure.isPresent) 'three_d_secure': threeDSecure.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('address_line1_check') &&
      json.containsKey('address_postal_code_check') &&
      json.containsKey('cvc_check') &&
      json.containsKey('expiry_check'); } 
IssuingAuthorizationVerificationData copyWith({IssuingAuthorizationVerificationDataAddressLine1Check? addressLine1Check, IssuingAuthorizationVerificationDataAddressPostalCodeCheck? addressPostalCodeCheck, Omittable<IssuingAuthorizationAuthenticationExemption?>? authenticationExemption, IssuingAuthorizationVerificationDataCvcCheck? cvcCheck, IssuingAuthorizationVerificationDataExpiryCheck? expiryCheck, Omittable<String?>? postalCode, Omittable<IssuingAuthorizationThreeDSecure?>? threeDSecure, }) { return IssuingAuthorizationVerificationData(
  addressLine1Check: addressLine1Check ?? this.addressLine1Check,
  addressPostalCodeCheck: addressPostalCodeCheck ?? this.addressPostalCodeCheck,
  authenticationExemption: authenticationExemption ?? this.authenticationExemption,
  cvcCheck: cvcCheck ?? this.cvcCheck,
  expiryCheck: expiryCheck ?? this.expiryCheck,
  postalCode: postalCode ?? this.postalCode,
  threeDSecure: threeDSecure ?? this.threeDSecure,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingAuthorizationVerificationData &&
          addressLine1Check == other.addressLine1Check &&
          addressPostalCodeCheck == other.addressPostalCodeCheck &&
          authenticationExemption == other.authenticationExemption &&
          cvcCheck == other.cvcCheck &&
          expiryCheck == other.expiryCheck &&
          postalCode == other.postalCode &&
          threeDSecure == other.threeDSecure; } 
@override int get hashCode { return Object.hash(addressLine1Check, addressPostalCodeCheck, authenticationExemption, cvcCheck, expiryCheck, postalCode, threeDSecure); } 
@override String toString() { return 'IssuingAuthorizationVerificationData(addressLine1Check: $addressLine1Check, addressPostalCodeCheck: $addressPostalCodeCheck, authenticationExemption: $authenticationExemption, cvcCheck: $cvcCheck, expiryCheck: $expiryCheck, postalCode: $postalCode, threeDSecure: $threeDSecure)'; } 
 }
