// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_tax_calculations_request_customer_details_address.dart';import 'post_tax_calculations_request_customer_details_tax_ids.dart';final class PostTaxCalculationsRequestCustomerDetailsAddressSource {const PostTaxCalculationsRequestCustomerDetailsAddressSource._(this.value);

factory PostTaxCalculationsRequestCustomerDetailsAddressSource.fromJson(String json) { return switch (json) {
  'billing' => billing,
  'shipping' => shipping,
  _ => PostTaxCalculationsRequestCustomerDetailsAddressSource._(json),
}; }

static const PostTaxCalculationsRequestCustomerDetailsAddressSource billing = PostTaxCalculationsRequestCustomerDetailsAddressSource._('billing');

static const PostTaxCalculationsRequestCustomerDetailsAddressSource shipping = PostTaxCalculationsRequestCustomerDetailsAddressSource._('shipping');

static const List<PostTaxCalculationsRequestCustomerDetailsAddressSource> values = [billing, shipping];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxCalculationsRequestCustomerDetailsAddressSource && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxCalculationsRequestCustomerDetailsAddressSource($value)'; } 
 }
final class PostTaxCalculationsRequestCustomerDetailsTaxabilityOverride {const PostTaxCalculationsRequestCustomerDetailsTaxabilityOverride._(this.value);

factory PostTaxCalculationsRequestCustomerDetailsTaxabilityOverride.fromJson(String json) { return switch (json) {
  'customer_exempt' => customerExempt,
  'none' => none,
  'reverse_charge' => reverseCharge,
  _ => PostTaxCalculationsRequestCustomerDetailsTaxabilityOverride._(json),
}; }

static const PostTaxCalculationsRequestCustomerDetailsTaxabilityOverride customerExempt = PostTaxCalculationsRequestCustomerDetailsTaxabilityOverride._('customer_exempt');

static const PostTaxCalculationsRequestCustomerDetailsTaxabilityOverride none = PostTaxCalculationsRequestCustomerDetailsTaxabilityOverride._('none');

static const PostTaxCalculationsRequestCustomerDetailsTaxabilityOverride reverseCharge = PostTaxCalculationsRequestCustomerDetailsTaxabilityOverride._('reverse_charge');

static const List<PostTaxCalculationsRequestCustomerDetailsTaxabilityOverride> values = [customerExempt, none, reverseCharge];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxCalculationsRequestCustomerDetailsTaxabilityOverride && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxCalculationsRequestCustomerDetailsTaxabilityOverride($value)'; } 
 }
/// Details about the customer, including address and tax IDs.
final class PostTaxCalculationsRequestCustomerDetails {const PostTaxCalculationsRequestCustomerDetails({this.address, this.addressSource, this.ipAddress, this.taxIds, this.taxabilityOverride, });

factory PostTaxCalculationsRequestCustomerDetails.fromJson(Map<String, dynamic> json) { return PostTaxCalculationsRequestCustomerDetails(
  address: json['address'] != null ? PostTaxCalculationsRequestCustomerDetailsAddress.fromJson(json['address'] as Map<String, dynamic>) : null,
  addressSource: json['address_source'] != null ? PostTaxCalculationsRequestCustomerDetailsAddressSource.fromJson(json['address_source'] as String) : null,
  ipAddress: json['ip_address'] as String?,
  taxIds: (json['tax_ids'] as List<dynamic>?)?.map((e) => PostTaxCalculationsRequestCustomerDetailsTaxIds.fromJson(e as Map<String, dynamic>)).toList(),
  taxabilityOverride: json['taxability_override'] != null ? PostTaxCalculationsRequestCustomerDetailsTaxabilityOverride.fromJson(json['taxability_override'] as String) : null,
); }

final PostTaxCalculationsRequestCustomerDetailsAddress? address;

final PostTaxCalculationsRequestCustomerDetailsAddressSource? addressSource;

final String? ipAddress;

final List<PostTaxCalculationsRequestCustomerDetailsTaxIds>? taxIds;

final PostTaxCalculationsRequestCustomerDetailsTaxabilityOverride? taxabilityOverride;

Map<String, dynamic> toJson() { return {
  if (address != null) 'address': address?.toJson(),
  if (addressSource != null) 'address_source': addressSource?.toJson(),
  'ip_address': ?ipAddress,
  if (taxIds != null) 'tax_ids': taxIds?.map((e) => e.toJson()).toList(),
  if (taxabilityOverride != null) 'taxability_override': taxabilityOverride?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'address', 'address_source', 'ip_address', 'tax_ids', 'taxability_override'}.contains(key)); } 
PostTaxCalculationsRequestCustomerDetails copyWith({PostTaxCalculationsRequestCustomerDetailsAddress Function()? address, PostTaxCalculationsRequestCustomerDetailsAddressSource Function()? addressSource, String Function()? ipAddress, List<PostTaxCalculationsRequestCustomerDetailsTaxIds> Function()? taxIds, PostTaxCalculationsRequestCustomerDetailsTaxabilityOverride Function()? taxabilityOverride, }) { return PostTaxCalculationsRequestCustomerDetails(
  address: address != null ? address() : this.address,
  addressSource: addressSource != null ? addressSource() : this.addressSource,
  ipAddress: ipAddress != null ? ipAddress() : this.ipAddress,
  taxIds: taxIds != null ? taxIds() : this.taxIds,
  taxabilityOverride: taxabilityOverride != null ? taxabilityOverride() : this.taxabilityOverride,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTaxCalculationsRequestCustomerDetails &&
          address == other.address &&
          addressSource == other.addressSource &&
          ipAddress == other.ipAddress &&
          listEquals(taxIds, other.taxIds) &&
          taxabilityOverride == other.taxabilityOverride; } 
@override int get hashCode { return Object.hash(address, addressSource, ipAddress, Object.hashAll(taxIds ?? const []), taxabilityOverride); } 
@override String toString() { return 'PostTaxCalculationsRequestCustomerDetails(address: $address, addressSource: $addressSource, ipAddress: $ipAddress, taxIds: $taxIds, taxabilityOverride: $taxabilityOverride)'; } 
 }
