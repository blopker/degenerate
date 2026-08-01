// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AccountAddress {const AccountAddress({this.accountSid = const Omittable.absent(), this.city = const Omittable.absent(), this.customerName = const Omittable.absent(), this.dateCreated = const Omittable.absent(), this.dateUpdated = const Omittable.absent(), this.friendlyName = const Omittable.absent(), this.isoCountry = const Omittable.absent(), this.postalCode = const Omittable.absent(), this.region = const Omittable.absent(), this.sid = const Omittable.absent(), this.street = const Omittable.absent(), this.uri = const Omittable.absent(), this.emergencyEnabled = const Omittable.absent(), this.validated = const Omittable.absent(), this.verified = const Omittable.absent(), this.streetSecondary = const Omittable.absent(), });

factory AccountAddress.fromJson(Map<String, dynamic> json) { return AccountAddress(
  accountSid: json.containsKey('account_sid') ? Omittable(json['account_sid'] as String?) : const Omittable.absent(),
  city: json.containsKey('city') ? Omittable(json['city'] as String?) : const Omittable.absent(),
  customerName: json.containsKey('customer_name') ? Omittable(json['customer_name'] as String?) : const Omittable.absent(),
  dateCreated: json.containsKey('date_created') ? Omittable(json['date_created'] as String?) : const Omittable.absent(),
  dateUpdated: json.containsKey('date_updated') ? Omittable(json['date_updated'] as String?) : const Omittable.absent(),
  friendlyName: json.containsKey('friendly_name') ? Omittable(json['friendly_name'] as String?) : const Omittable.absent(),
  isoCountry: json.containsKey('iso_country') ? Omittable(json['iso_country'] as String?) : const Omittable.absent(),
  postalCode: json.containsKey('postal_code') ? Omittable(json['postal_code'] as String?) : const Omittable.absent(),
  region: json.containsKey('region') ? Omittable(json['region'] as String?) : const Omittable.absent(),
  sid: json.containsKey('sid') ? Omittable(json['sid'] as String?) : const Omittable.absent(),
  street: json.containsKey('street') ? Omittable(json['street'] as String?) : const Omittable.absent(),
  uri: json.containsKey('uri') ? Omittable(json['uri'] as String?) : const Omittable.absent(),
  emergencyEnabled: json.containsKey('emergency_enabled') ? Omittable(json['emergency_enabled'] as bool?) : const Omittable.absent(),
  validated: json.containsKey('validated') ? Omittable(json['validated'] as bool?) : const Omittable.absent(),
  verified: json.containsKey('verified') ? Omittable(json['verified'] as bool?) : const Omittable.absent(),
  streetSecondary: json.containsKey('street_secondary') ? Omittable(json['street_secondary'] as String?) : const Omittable.absent(),
); }

/// The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that is responsible for the Address resource.
final Omittable<String?> accountSid;

/// The city in which the address is located.
final Omittable<String?> city;

/// The name associated with the address.This property has a maximum length of 16 4-byte characters, or 21 3-byte characters.
final Omittable<String?> customerName;

/// The date and time in GMT that the resource was created specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final Omittable<String?> dateCreated;

/// The date and time in GMT that the resource was last updated specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final Omittable<String?> dateUpdated;

/// The string that you assigned to describe the resource.
final Omittable<String?> friendlyName;

/// The ISO country code of the address.
final Omittable<String?> isoCountry;

/// The postal code of the address.
final Omittable<String?> postalCode;

/// The state or region of the address.
final Omittable<String?> region;

/// The unique string that that we created to identify the Address resource.
final Omittable<String?> sid;

/// The number and street address of the address.
final Omittable<String?> street;

/// The URI of the resource, relative to `https://api.twilio.com`.
final Omittable<String?> uri;

/// Whether emergency calling has been enabled on this number.
final Omittable<bool?> emergencyEnabled;

/// Whether the address has been validated to comply with local regulation. In countries that require valid addresses, an invalid address will not be accepted. `true` indicates the Address has been validated. `false` indicate the country doesn't require validation or the Address is not valid.
final Omittable<bool?> validated;

/// Whether the address has been verified to comply with regulation. In countries that require valid addresses, an invalid address will not be accepted. `true` indicates the Address has been verified. `false` indicate the country doesn't require verified or the Address is not valid.
final Omittable<bool?> verified;

/// The additional number and street address of the address.
final Omittable<String?> streetSecondary;

Map<String, dynamic> toJson() { return {
  if (accountSid.isPresent) 'account_sid': accountSid.value,
  if (city.isPresent) 'city': city.value,
  if (customerName.isPresent) 'customer_name': customerName.value,
  if (dateCreated.isPresent) 'date_created': dateCreated.value,
  if (dateUpdated.isPresent) 'date_updated': dateUpdated.value,
  if (friendlyName.isPresent) 'friendly_name': friendlyName.value,
  if (isoCountry.isPresent) 'iso_country': isoCountry.value,
  if (postalCode.isPresent) 'postal_code': postalCode.value,
  if (region.isPresent) 'region': region.value,
  if (sid.isPresent) 'sid': sid.value,
  if (street.isPresent) 'street': street.value,
  if (uri.isPresent) 'uri': uri.value,
  if (emergencyEnabled.isPresent) 'emergency_enabled': emergencyEnabled.value,
  if (validated.isPresent) 'validated': validated.value,
  if (verified.isPresent) 'verified': verified.value,
  if (streetSecondary.isPresent) 'street_secondary': streetSecondary.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account_sid', 'city', 'customer_name', 'date_created', 'date_updated', 'friendly_name', 'iso_country', 'postal_code', 'region', 'sid', 'street', 'uri', 'emergency_enabled', 'validated', 'verified', 'street_secondary'}.contains(key)); } 
AccountAddress copyWith({Omittable<String?>? accountSid, Omittable<String?>? city, Omittable<String?>? customerName, Omittable<String?>? dateCreated, Omittable<String?>? dateUpdated, Omittable<String?>? friendlyName, Omittable<String?>? isoCountry, Omittable<String?>? postalCode, Omittable<String?>? region, Omittable<String?>? sid, Omittable<String?>? street, Omittable<String?>? uri, Omittable<bool?>? emergencyEnabled, Omittable<bool?>? validated, Omittable<bool?>? verified, Omittable<String?>? streetSecondary, }) { return AccountAddress(
  accountSid: accountSid ?? this.accountSid,
  city: city ?? this.city,
  customerName: customerName ?? this.customerName,
  dateCreated: dateCreated ?? this.dateCreated,
  dateUpdated: dateUpdated ?? this.dateUpdated,
  friendlyName: friendlyName ?? this.friendlyName,
  isoCountry: isoCountry ?? this.isoCountry,
  postalCode: postalCode ?? this.postalCode,
  region: region ?? this.region,
  sid: sid ?? this.sid,
  street: street ?? this.street,
  uri: uri ?? this.uri,
  emergencyEnabled: emergencyEnabled ?? this.emergencyEnabled,
  validated: validated ?? this.validated,
  verified: verified ?? this.verified,
  streetSecondary: streetSecondary ?? this.streetSecondary,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountAddress &&
          accountSid == other.accountSid &&
          city == other.city &&
          customerName == other.customerName &&
          dateCreated == other.dateCreated &&
          dateUpdated == other.dateUpdated &&
          friendlyName == other.friendlyName &&
          isoCountry == other.isoCountry &&
          postalCode == other.postalCode &&
          region == other.region &&
          sid == other.sid &&
          street == other.street &&
          uri == other.uri &&
          emergencyEnabled == other.emergencyEnabled &&
          validated == other.validated &&
          verified == other.verified &&
          streetSecondary == other.streetSecondary; } 
@override int get hashCode { return Object.hash(accountSid, city, customerName, dateCreated, dateUpdated, friendlyName, isoCountry, postalCode, region, sid, street, uri, emergencyEnabled, validated, verified, streetSecondary); } 
@override String toString() { return 'AccountAddress(accountSid: $accountSid, city: $city, customerName: $customerName, dateCreated: $dateCreated, dateUpdated: $dateUpdated, friendlyName: $friendlyName, isoCountry: $isoCountry, postalCode: $postalCode, region: $region, sid: $sid, street: $street, uri: $uri, emergencyEnabled: $emergencyEnabled, validated: $validated, verified: $verified, streetSecondary: $streetSecondary)'; } 
 }
