// GENERATED CODE - DO NOT MODIFY BY HAND

final class AccountAddress {const AccountAddress({this.accountSid, this.city, this.customerName, this.dateCreated, this.dateUpdated, this.friendlyName, this.isoCountry, this.postalCode, this.region, this.sid, this.street, this.uri, this.emergencyEnabled, this.validated, this.verified, this.streetSecondary, });

factory AccountAddress.fromJson(Map<String, dynamic> json) { return AccountAddress(
  accountSid: json['account_sid'] as String?,
  city: json['city'] as String?,
  customerName: json['customer_name'] as String?,
  dateCreated: json['date_created'] as String?,
  dateUpdated: json['date_updated'] as String?,
  friendlyName: json['friendly_name'] as String?,
  isoCountry: json['iso_country'] as String?,
  postalCode: json['postal_code'] as String?,
  region: json['region'] as String?,
  sid: json['sid'] as String?,
  street: json['street'] as String?,
  uri: json['uri'] as String?,
  emergencyEnabled: json['emergency_enabled'] as bool?,
  validated: json['validated'] as bool?,
  verified: json['verified'] as bool?,
  streetSecondary: json['street_secondary'] as String?,
); }

/// The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that is responsible for the Address resource.
final String? accountSid;

/// The city in which the address is located.
final String? city;

/// The name associated with the address.This property has a maximum length of 16 4-byte characters, or 21 3-byte characters.
final String? customerName;

/// The date and time in GMT that the resource was created specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final String? dateCreated;

/// The date and time in GMT that the resource was last updated specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final String? dateUpdated;

/// The string that you assigned to describe the resource.
final String? friendlyName;

/// The ISO country code of the address.
final String? isoCountry;

/// The postal code of the address.
final String? postalCode;

/// The state or region of the address.
final String? region;

/// The unique string that that we created to identify the Address resource.
final String? sid;

/// The number and street address of the address.
final String? street;

/// The URI of the resource, relative to `https://api.twilio.com`.
final String? uri;

/// Whether emergency calling has been enabled on this number.
final bool? emergencyEnabled;

/// Whether the address has been validated to comply with local regulation. In countries that require valid addresses, an invalid address will not be accepted. `true` indicates the Address has been validated. `false` indicate the country doesn't require validation or the Address is not valid.
final bool? validated;

/// Whether the address has been verified to comply with regulation. In countries that require valid addresses, an invalid address will not be accepted. `true` indicates the Address has been verified. `false` indicate the country doesn't require verified or the Address is not valid.
final bool? verified;

/// The additional number and street address of the address.
final String? streetSecondary;

Map<String, dynamic> toJson() { return {
  'account_sid': ?accountSid,
  'city': ?city,
  'customer_name': ?customerName,
  'date_created': ?dateCreated,
  'date_updated': ?dateUpdated,
  'friendly_name': ?friendlyName,
  'iso_country': ?isoCountry,
  'postal_code': ?postalCode,
  'region': ?region,
  'sid': ?sid,
  'street': ?street,
  'uri': ?uri,
  'emergency_enabled': ?emergencyEnabled,
  'validated': ?validated,
  'verified': ?verified,
  'street_secondary': ?streetSecondary,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
AccountAddress copyWith({String? Function()? accountSid, String? Function()? city, String? Function()? customerName, String? Function()? dateCreated, String? Function()? dateUpdated, String? Function()? friendlyName, String? Function()? isoCountry, String? Function()? postalCode, String? Function()? region, String? Function()? sid, String? Function()? street, String? Function()? uri, bool? Function()? emergencyEnabled, bool? Function()? validated, bool? Function()? verified, String? Function()? streetSecondary, }) { return AccountAddress(
  accountSid: accountSid != null ? accountSid() : this.accountSid,
  city: city != null ? city() : this.city,
  customerName: customerName != null ? customerName() : this.customerName,
  dateCreated: dateCreated != null ? dateCreated() : this.dateCreated,
  dateUpdated: dateUpdated != null ? dateUpdated() : this.dateUpdated,
  friendlyName: friendlyName != null ? friendlyName() : this.friendlyName,
  isoCountry: isoCountry != null ? isoCountry() : this.isoCountry,
  postalCode: postalCode != null ? postalCode() : this.postalCode,
  region: region != null ? region() : this.region,
  sid: sid != null ? sid() : this.sid,
  street: street != null ? street() : this.street,
  uri: uri != null ? uri() : this.uri,
  emergencyEnabled: emergencyEnabled != null ? emergencyEnabled() : this.emergencyEnabled,
  validated: validated != null ? validated() : this.validated,
  verified: verified != null ? verified() : this.verified,
  streetSecondary: streetSecondary != null ? streetSecondary() : this.streetSecondary,
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
