// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_terminal_locations_location_request_address.dart';import 'post_terminal_locations_location_request_address_kana.dart';import 'post_terminal_locations_location_request_address_kanji.dart';import 'post_terminal_locations_location_request_configuration_overrides.dart';import 'post_terminal_locations_location_request_display_name.dart';import 'post_terminal_locations_location_request_display_name_kana.dart';import 'post_terminal_locations_location_request_display_name_kanji.dart';import 'post_terminal_locations_location_request_metadata.dart';import 'post_terminal_locations_location_request_phone.dart';@immutable final class PostTerminalLocationsLocationRequest {const PostTerminalLocationsLocationRequest({this.address, this.addressKana, this.addressKanji, this.configurationOverrides, this.displayName, this.displayNameKana, this.displayNameKanji, this.expand, this.metadata, this.phone, });

factory PostTerminalLocationsLocationRequest.fromJson(Map<String, dynamic> json) { return PostTerminalLocationsLocationRequest(
  address: json['address'] != null ? PostTerminalLocationsLocationRequestAddress.fromJson(json['address'] as Map<String, dynamic>) : null,
  addressKana: json['address_kana'] != null ? PostTerminalLocationsLocationRequestAddressKana.fromJson(json['address_kana'] as Map<String, dynamic>) : null,
  addressKanji: json['address_kanji'] != null ? PostTerminalLocationsLocationRequestAddressKanji.fromJson(json['address_kanji'] as Map<String, dynamic>) : null,
  configurationOverrides: json['configuration_overrides'] != null ? OneOf2.parse(json['configuration_overrides'], fromA: (v) => v as String, fromB: (v) => PostTerminalLocationsLocationRequestConfigurationOverridesVariant2.fromJson(v as String),) : null,
  displayName: json['display_name'] != null ? OneOf2.parse(json['display_name'], fromA: (v) => v as String, fromB: (v) => PostTerminalLocationsLocationRequestDisplayNameVariant2.fromJson(v as String),) : null,
  displayNameKana: json['display_name_kana'] != null ? OneOf2.parse(json['display_name_kana'], fromA: (v) => v as String, fromB: (v) => PostTerminalLocationsLocationRequestDisplayNameKanaVariant2.fromJson(v as String),) : null,
  displayNameKanji: json['display_name_kanji'] != null ? OneOf2.parse(json['display_name_kanji'], fromA: (v) => v as String, fromB: (v) => PostTerminalLocationsLocationRequestDisplayNameKanjiVariant2.fromJson(v as String),) : null,
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  metadata: json['metadata'] != null ? OneOf2.parse(json['metadata'], fromA: (v) => (v as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String)), fromB: (v) => PostTerminalLocationsLocationRequestMetadataVariant2.fromJson(v as String),) : null,
  phone: json['phone'] != null ? OneOf2.parse(json['phone'], fromA: (v) => v as String, fromB: (v) => PostTerminalLocationsLocationRequestPhoneVariant2.fromJson(v as String),) : null,
); }

/// The full address of the location. You can't change the location's `country`. If you need to modify the `country` field, create a new `Location` object and re-register any existing readers to that location.
final PostTerminalLocationsLocationRequestAddress? address;

/// The Kana variation of the full address of the location (Japan only).
final PostTerminalLocationsLocationRequestAddressKana? addressKana;

/// The Kanji variation of the full address of the location (Japan only).
final PostTerminalLocationsLocationRequestAddressKanji? addressKanji;

/// The ID of a configuration that will be used to customize all readers in this location.
final PostTerminalLocationsLocationRequestConfigurationOverrides? configurationOverrides;

/// A name for the location.
final PostTerminalLocationsLocationRequestDisplayName? displayName;

/// The Kana variation of the name for the location (Japan only).
final PostTerminalLocationsLocationRequestDisplayNameKana? displayNameKana;

/// The Kanji variation of the name for the location (Japan only).
final PostTerminalLocationsLocationRequestDisplayNameKanji? displayNameKanji;

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
final PostTerminalLocationsLocationRequestMetadata? metadata;

/// The phone number for the location.
final PostTerminalLocationsLocationRequestPhone? phone;

Map<String, dynamic> toJson() { return {
  if (address != null) 'address': address?.toJson(),
  if (addressKana != null) 'address_kana': addressKana?.toJson(),
  if (addressKanji != null) 'address_kanji': addressKanji?.toJson(),
  if (configurationOverrides != null) 'configuration_overrides': configurationOverrides?.toJson(),
  if (displayName != null) 'display_name': displayName?.toJson(),
  if (displayNameKana != null) 'display_name_kana': displayNameKana?.toJson(),
  if (displayNameKanji != null) 'display_name_kanji': displayNameKanji?.toJson(),
  'expand': ?expand,
  if (metadata != null) 'metadata': metadata?.toJson(),
  if (phone != null) 'phone': phone?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'address', 'address_kana', 'address_kanji', 'configuration_overrides', 'display_name', 'display_name_kana', 'display_name_kanji', 'expand', 'metadata', 'phone'}.contains(key)); } 
PostTerminalLocationsLocationRequest copyWith({PostTerminalLocationsLocationRequestAddress Function()? address, PostTerminalLocationsLocationRequestAddressKana Function()? addressKana, PostTerminalLocationsLocationRequestAddressKanji Function()? addressKanji, PostTerminalLocationsLocationRequestConfigurationOverrides Function()? configurationOverrides, PostTerminalLocationsLocationRequestDisplayName Function()? displayName, PostTerminalLocationsLocationRequestDisplayNameKana Function()? displayNameKana, PostTerminalLocationsLocationRequestDisplayNameKanji Function()? displayNameKanji, List<String> Function()? expand, PostTerminalLocationsLocationRequestMetadata Function()? metadata, PostTerminalLocationsLocationRequestPhone Function()? phone, }) { return PostTerminalLocationsLocationRequest(
  address: address != null ? address() : this.address,
  addressKana: addressKana != null ? addressKana() : this.addressKana,
  addressKanji: addressKanji != null ? addressKanji() : this.addressKanji,
  configurationOverrides: configurationOverrides != null ? configurationOverrides() : this.configurationOverrides,
  displayName: displayName != null ? displayName() : this.displayName,
  displayNameKana: displayNameKana != null ? displayNameKana() : this.displayNameKana,
  displayNameKanji: displayNameKanji != null ? displayNameKanji() : this.displayNameKanji,
  expand: expand != null ? expand() : this.expand,
  metadata: metadata != null ? metadata() : this.metadata,
  phone: phone != null ? phone() : this.phone,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTerminalLocationsLocationRequest &&
          address == other.address &&
          addressKana == other.addressKana &&
          addressKanji == other.addressKanji &&
          configurationOverrides == other.configurationOverrides &&
          displayName == other.displayName &&
          displayNameKana == other.displayNameKana &&
          displayNameKanji == other.displayNameKanji &&
          listEquals(expand, other.expand) &&
          metadata == other.metadata &&
          phone == other.phone; } 
@override int get hashCode { return Object.hash(address, addressKana, addressKanji, configurationOverrides, displayName, displayNameKana, displayNameKanji, Object.hashAll(expand ?? const []), metadata, phone); } 
@override String toString() { return 'PostTerminalLocationsLocationRequest(address: $address, addressKana: $addressKana, addressKanji: $addressKanji, configurationOverrides: $configurationOverrides, displayName: $displayName, displayNameKana: $displayNameKana, displayNameKanji: $displayNameKanji, expand: $expand, metadata: $metadata, phone: $phone)'; } 
 }
