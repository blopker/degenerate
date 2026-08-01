// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'account_available_phone_number_country_available_phone_number_toll_free_capabilities.dart';@immutable final class AccountAvailablePhoneNumberCountryAvailablePhoneNumberTollFree {const AccountAvailablePhoneNumberCountryAvailablePhoneNumberTollFree({this.friendlyName = const Omittable.absent(), this.phoneNumber = const Omittable.absent(), this.lata = const Omittable.absent(), this.locality = const Omittable.absent(), this.rateCenter = const Omittable.absent(), this.latitude = const Omittable.absent(), this.longitude = const Omittable.absent(), this.region = const Omittable.absent(), this.postalCode = const Omittable.absent(), this.isoCountry = const Omittable.absent(), this.addressRequirements = const Omittable.absent(), this.beta = const Omittable.absent(), this.capabilities = const Omittable.absent(), });

factory AccountAvailablePhoneNumberCountryAvailablePhoneNumberTollFree.fromJson(Map<String, dynamic> json) { return AccountAvailablePhoneNumberCountryAvailablePhoneNumberTollFree(
  friendlyName: json.containsKey('friendly_name') ? Omittable(json['friendly_name'] as String?) : const Omittable.absent(),
  phoneNumber: json.containsKey('phone_number') ? Omittable(json['phone_number'] as String?) : const Omittable.absent(),
  lata: json.containsKey('lata') ? Omittable(json['lata'] as String?) : const Omittable.absent(),
  locality: json.containsKey('locality') ? Omittable(json['locality'] as String?) : const Omittable.absent(),
  rateCenter: json.containsKey('rate_center') ? Omittable(json['rate_center'] as String?) : const Omittable.absent(),
  latitude: json.containsKey('latitude') ? Omittable(json['latitude'] != null ? (json['latitude'] as num).toDouble() : null) : const Omittable.absent(),
  longitude: json.containsKey('longitude') ? Omittable(json['longitude'] != null ? (json['longitude'] as num).toDouble() : null) : const Omittable.absent(),
  region: json.containsKey('region') ? Omittable(json['region'] as String?) : const Omittable.absent(),
  postalCode: json.containsKey('postal_code') ? Omittable(json['postal_code'] as String?) : const Omittable.absent(),
  isoCountry: json.containsKey('iso_country') ? Omittable(json['iso_country'] as String?) : const Omittable.absent(),
  addressRequirements: json.containsKey('address_requirements') ? Omittable(json['address_requirements'] as String?) : const Omittable.absent(),
  beta: json.containsKey('beta') ? Omittable(json['beta'] as bool?) : const Omittable.absent(),
  capabilities: json.containsKey('capabilities') ? Omittable(json['capabilities'] != null ? AccountAvailablePhoneNumberCountryAvailablePhoneNumberTollFreeCapabilities.fromJson(json['capabilities'] as Map<String, dynamic>) : null) : const Omittable.absent(),
); }

/// A formatted version of the phone number.
final Omittable<String?> friendlyName;

/// The phone number in [E.164](https://www.twilio.com/docs/glossary/what-e164) format, which consists of a + followed by the country code and subscriber number.
final Omittable<String?> phoneNumber;

/// The [LATA](https://en.wikipedia.org/wiki/Local_access_and_transport_area) of this phone number. Available for only phone numbers from the US and Canada.
final Omittable<String?> lata;

/// The locality or city of this phone number's location.
final Omittable<String?> locality;

/// The [rate center](https://en.wikipedia.org/wiki/Telephone_exchange) of this phone number. Available for only phone numbers from the US and Canada.
final Omittable<String?> rateCenter;

/// The latitude of this phone number's location. Available for only phone numbers from the US and Canada.
final Omittable<double?> latitude;

/// The longitude of this phone number's location. Available for only phone numbers from the US and Canada.
final Omittable<double?> longitude;

/// The two-letter state or province abbreviation of this phone number's location. Available for only phone numbers from the US and Canada.
final Omittable<String?> region;

/// The postal or ZIP code of this phone number's location. Available for only phone numbers from the US and Canada.
final Omittable<String?> postalCode;

/// The [ISO country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) of this phone number.
final Omittable<String?> isoCountry;

/// The type of [Address](https://www.twilio.com/docs/usage/api/address) resource the phone number requires. Can be: `none`, `any`, `local`, or `foreign`. `none` means no address is required. `any` means an address is required, but it can be anywhere in the world. `local` means an address in the phone number's country is required. `foreign` means an address outside of the phone number's country is required.
final Omittable<String?> addressRequirements;

/// Whether the phone number is new to the Twilio platform. Can be: `true` or `false`.
final Omittable<bool?> beta;

/// The set of Boolean properties that indicate whether a phone number can receive calls or messages.  Capabilities are: `Voice`, `SMS`, and `MMS` and each capability can be: `true` or `false`.
final Omittable<AccountAvailablePhoneNumberCountryAvailablePhoneNumberTollFreeCapabilities?> capabilities;

Map<String, dynamic> toJson() { return {
  if (friendlyName.isPresent) 'friendly_name': friendlyName.value,
  if (phoneNumber.isPresent) 'phone_number': phoneNumber.value,
  if (lata.isPresent) 'lata': lata.value,
  if (locality.isPresent) 'locality': locality.value,
  if (rateCenter.isPresent) 'rate_center': rateCenter.value,
  if (latitude.isPresent) 'latitude': latitude.value,
  if (longitude.isPresent) 'longitude': longitude.value,
  if (region.isPresent) 'region': region.value,
  if (postalCode.isPresent) 'postal_code': postalCode.value,
  if (isoCountry.isPresent) 'iso_country': isoCountry.value,
  if (addressRequirements.isPresent) 'address_requirements': addressRequirements.value,
  if (beta.isPresent) 'beta': beta.value,
  if (capabilities.isPresent) 'capabilities': capabilities.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'friendly_name', 'phone_number', 'lata', 'locality', 'rate_center', 'latitude', 'longitude', 'region', 'postal_code', 'iso_country', 'address_requirements', 'beta', 'capabilities'}.contains(key)); } 
AccountAvailablePhoneNumberCountryAvailablePhoneNumberTollFree copyWith({Omittable<String?>? friendlyName, Omittable<String?>? phoneNumber, Omittable<String?>? lata, Omittable<String?>? locality, Omittable<String?>? rateCenter, Omittable<double?>? latitude, Omittable<double?>? longitude, Omittable<String?>? region, Omittable<String?>? postalCode, Omittable<String?>? isoCountry, Omittable<String?>? addressRequirements, Omittable<bool?>? beta, Omittable<AccountAvailablePhoneNumberCountryAvailablePhoneNumberTollFreeCapabilities?>? capabilities, }) { return AccountAvailablePhoneNumberCountryAvailablePhoneNumberTollFree(
  friendlyName: friendlyName ?? this.friendlyName,
  phoneNumber: phoneNumber ?? this.phoneNumber,
  lata: lata ?? this.lata,
  locality: locality ?? this.locality,
  rateCenter: rateCenter ?? this.rateCenter,
  latitude: latitude ?? this.latitude,
  longitude: longitude ?? this.longitude,
  region: region ?? this.region,
  postalCode: postalCode ?? this.postalCode,
  isoCountry: isoCountry ?? this.isoCountry,
  addressRequirements: addressRequirements ?? this.addressRequirements,
  beta: beta ?? this.beta,
  capabilities: capabilities ?? this.capabilities,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountAvailablePhoneNumberCountryAvailablePhoneNumberTollFree &&
          friendlyName == other.friendlyName &&
          phoneNumber == other.phoneNumber &&
          lata == other.lata &&
          locality == other.locality &&
          rateCenter == other.rateCenter &&
          latitude == other.latitude &&
          longitude == other.longitude &&
          region == other.region &&
          postalCode == other.postalCode &&
          isoCountry == other.isoCountry &&
          addressRequirements == other.addressRequirements &&
          beta == other.beta &&
          capabilities == other.capabilities; } 
@override int get hashCode { return Object.hash(friendlyName, phoneNumber, lata, locality, rateCenter, latitude, longitude, region, postalCode, isoCountry, addressRequirements, beta, capabilities); } 
@override String toString() { return 'AccountAvailablePhoneNumberCountryAvailablePhoneNumberTollFree(friendlyName: $friendlyName, phoneNumber: $phoneNumber, lata: $lata, locality: $locality, rateCenter: $rateCenter, latitude: $latitude, longitude: $longitude, region: $region, postalCode: $postalCode, isoCountry: $isoCountry, addressRequirements: $addressRequirements, beta: $beta, capabilities: $capabilities)'; } 
 }
