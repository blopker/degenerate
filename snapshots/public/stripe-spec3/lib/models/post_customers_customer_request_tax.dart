// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_customers_customer_request_tax_ip_address.dart';@immutable final class PostCustomersCustomerRequestTaxValidateLocation {const PostCustomersCustomerRequestTaxValidateLocation._(this.value);

factory PostCustomersCustomerRequestTaxValidateLocation.fromJson(String json) { return switch (json) {
  'auto' => auto,
  'deferred' => $deferred,
  'immediately' => immediately,
  _ => PostCustomersCustomerRequestTaxValidateLocation._(json),
}; }

static const PostCustomersCustomerRequestTaxValidateLocation auto = PostCustomersCustomerRequestTaxValidateLocation._('auto');

static const PostCustomersCustomerRequestTaxValidateLocation $deferred = PostCustomersCustomerRequestTaxValidateLocation._('deferred');

static const PostCustomersCustomerRequestTaxValidateLocation immediately = PostCustomersCustomerRequestTaxValidateLocation._('immediately');

static const List<PostCustomersCustomerRequestTaxValidateLocation> values = [auto, $deferred, immediately];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCustomersCustomerRequestTaxValidateLocation && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCustomersCustomerRequestTaxValidateLocation($value)'; } 
 }
/// Tax details about the customer.
@immutable final class PostCustomersCustomerRequestTax {const PostCustomersCustomerRequestTax({this.ipAddress, this.validateLocation, });

factory PostCustomersCustomerRequestTax.fromJson(Map<String, dynamic> json) { return PostCustomersCustomerRequestTax(
  ipAddress: json['ip_address'] != null ? OneOf2.parse(json['ip_address'], fromA: (v) => v as String, fromB: (v) => PostCustomersCustomerRequestTaxIpAddressVariant2.fromJson(v as String),) : null,
  validateLocation: json['validate_location'] != null ? PostCustomersCustomerRequestTaxValidateLocation.fromJson(json['validate_location'] as String) : null,
); }

final PostCustomersCustomerRequestTaxIpAddress? ipAddress;

final PostCustomersCustomerRequestTaxValidateLocation? validateLocation;

Map<String, dynamic> toJson() { return {
  if (ipAddress != null) 'ip_address': ipAddress?.toJson(),
  if (validateLocation != null) 'validate_location': validateLocation?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'ip_address', 'validate_location'}.contains(key)); } 
PostCustomersCustomerRequestTax copyWith({PostCustomersCustomerRequestTaxIpAddress Function()? ipAddress, PostCustomersCustomerRequestTaxValidateLocation Function()? validateLocation, }) { return PostCustomersCustomerRequestTax(
  ipAddress: ipAddress != null ? ipAddress() : this.ipAddress,
  validateLocation: validateLocation != null ? validateLocation() : this.validateLocation,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCustomersCustomerRequestTax &&
          ipAddress == other.ipAddress &&
          validateLocation == other.validateLocation; } 
@override int get hashCode { return Object.hash(ipAddress, validateLocation); } 
@override String toString() { return 'PostCustomersCustomerRequestTax(ipAddress: $ipAddress, validateLocation: $validateLocation)'; } 
 }
