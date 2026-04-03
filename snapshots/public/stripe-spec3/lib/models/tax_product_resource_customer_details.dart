// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tax_product_resource_customer_details_resource_tax_id.dart';import 'tax_product_resource_postal_address.dart';/// The type of customer address provided.
@immutable final class TaxProductResourceCustomerDetailsAddressSource {const TaxProductResourceCustomerDetailsAddressSource._(this.value);

factory TaxProductResourceCustomerDetailsAddressSource.fromJson(String json) { return switch (json) {
  'billing' => billing,
  'shipping' => shipping,
  _ => TaxProductResourceCustomerDetailsAddressSource._(json),
}; }

static const TaxProductResourceCustomerDetailsAddressSource billing = TaxProductResourceCustomerDetailsAddressSource._('billing');

static const TaxProductResourceCustomerDetailsAddressSource shipping = TaxProductResourceCustomerDetailsAddressSource._('shipping');

static const List<TaxProductResourceCustomerDetailsAddressSource> values = [billing, shipping];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TaxProductResourceCustomerDetailsAddressSource && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TaxProductResourceCustomerDetailsAddressSource($value)'; } 
 }
/// The taxability override used for taxation.
@immutable final class TaxProductResourceCustomerDetailsTaxabilityOverride {const TaxProductResourceCustomerDetailsTaxabilityOverride._(this.value);

factory TaxProductResourceCustomerDetailsTaxabilityOverride.fromJson(String json) { return switch (json) {
  'customer_exempt' => customerExempt,
  'none' => none,
  'reverse_charge' => reverseCharge,
  _ => TaxProductResourceCustomerDetailsTaxabilityOverride._(json),
}; }

static const TaxProductResourceCustomerDetailsTaxabilityOverride customerExempt = TaxProductResourceCustomerDetailsTaxabilityOverride._('customer_exempt');

static const TaxProductResourceCustomerDetailsTaxabilityOverride none = TaxProductResourceCustomerDetailsTaxabilityOverride._('none');

static const TaxProductResourceCustomerDetailsTaxabilityOverride reverseCharge = TaxProductResourceCustomerDetailsTaxabilityOverride._('reverse_charge');

static const List<TaxProductResourceCustomerDetailsTaxabilityOverride> values = [customerExempt, none, reverseCharge];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TaxProductResourceCustomerDetailsTaxabilityOverride && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TaxProductResourceCustomerDetailsTaxabilityOverride($value)'; } 
 }
/// 
@immutable final class TaxProductResourceCustomerDetails {const TaxProductResourceCustomerDetails({required this.taxIds, required this.taxabilityOverride, this.address, this.addressSource, this.ipAddress, });

factory TaxProductResourceCustomerDetails.fromJson(Map<String, dynamic> json) { return TaxProductResourceCustomerDetails(
  address: json['address'] != null ? TaxProductResourcePostalAddress.fromJson(json['address'] as Map<String, dynamic>) : null,
  addressSource: json['address_source'] != null ? TaxProductResourceCustomerDetailsAddressSource.fromJson(json['address_source'] as String) : null,
  ipAddress: json['ip_address'] as String?,
  taxIds: (json['tax_ids'] as List<dynamic>).map((e) => TaxProductResourceCustomerDetailsResourceTaxId.fromJson(e as Map<String, dynamic>)).toList(),
  taxabilityOverride: TaxProductResourceCustomerDetailsTaxabilityOverride.fromJson(json['taxability_override'] as String),
); }

/// The customer's postal address (for example, home or business location).
final TaxProductResourcePostalAddress? address;

/// The type of customer address provided.
final TaxProductResourceCustomerDetailsAddressSource? addressSource;

/// The customer's IP address (IPv4 or IPv6).
final String? ipAddress;

/// The customer's tax IDs (for example, EU VAT numbers).
final List<TaxProductResourceCustomerDetailsResourceTaxId> taxIds;

/// The taxability override used for taxation.
final TaxProductResourceCustomerDetailsTaxabilityOverride taxabilityOverride;

Map<String, dynamic> toJson() { return {
  if (address != null) 'address': address?.toJson(),
  if (addressSource != null) 'address_source': addressSource?.toJson(),
  'ip_address': ?ipAddress,
  'tax_ids': taxIds.map((e) => e.toJson()).toList(),
  'taxability_override': taxabilityOverride.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('tax_ids') &&
      json.containsKey('taxability_override'); } 
TaxProductResourceCustomerDetails copyWith({TaxProductResourcePostalAddress? Function()? address, TaxProductResourceCustomerDetailsAddressSource? Function()? addressSource, String? Function()? ipAddress, List<TaxProductResourceCustomerDetailsResourceTaxId>? taxIds, TaxProductResourceCustomerDetailsTaxabilityOverride? taxabilityOverride, }) { return TaxProductResourceCustomerDetails(
  address: address != null ? address() : this.address,
  addressSource: addressSource != null ? addressSource() : this.addressSource,
  ipAddress: ipAddress != null ? ipAddress() : this.ipAddress,
  taxIds: taxIds ?? this.taxIds,
  taxabilityOverride: taxabilityOverride ?? this.taxabilityOverride,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TaxProductResourceCustomerDetails &&
          address == other.address &&
          addressSource == other.addressSource &&
          ipAddress == other.ipAddress &&
          listEquals(taxIds, other.taxIds) &&
          taxabilityOverride == other.taxabilityOverride; } 
@override int get hashCode { return Object.hash(address, addressSource, ipAddress, Object.hashAll(taxIds), taxabilityOverride); } 
@override String toString() { return 'TaxProductResourceCustomerDetails(address: $address, addressSource: $addressSource, ipAddress: $ipAddress, taxIds: $taxIds, taxabilityOverride: $taxabilityOverride)'; } 
 }
