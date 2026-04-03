// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostCheckoutSessionsRequestCustomerUpdateAddress {const PostCheckoutSessionsRequestCustomerUpdateAddress._(this.value);

factory PostCheckoutSessionsRequestCustomerUpdateAddress.fromJson(String json) { return switch (json) {
  'auto' => auto,
  'never' => never,
  _ => PostCheckoutSessionsRequestCustomerUpdateAddress._(json),
}; }

static const PostCheckoutSessionsRequestCustomerUpdateAddress auto = PostCheckoutSessionsRequestCustomerUpdateAddress._('auto');

static const PostCheckoutSessionsRequestCustomerUpdateAddress never = PostCheckoutSessionsRequestCustomerUpdateAddress._('never');

static const List<PostCheckoutSessionsRequestCustomerUpdateAddress> values = [auto, never];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCheckoutSessionsRequestCustomerUpdateAddress && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestCustomerUpdateAddress($value)'; } 
 }
@immutable final class PostCheckoutSessionsRequestCustomerUpdateName {const PostCheckoutSessionsRequestCustomerUpdateName._(this.value);

factory PostCheckoutSessionsRequestCustomerUpdateName.fromJson(String json) { return switch (json) {
  'auto' => auto,
  'never' => never,
  _ => PostCheckoutSessionsRequestCustomerUpdateName._(json),
}; }

static const PostCheckoutSessionsRequestCustomerUpdateName auto = PostCheckoutSessionsRequestCustomerUpdateName._('auto');

static const PostCheckoutSessionsRequestCustomerUpdateName never = PostCheckoutSessionsRequestCustomerUpdateName._('never');

static const List<PostCheckoutSessionsRequestCustomerUpdateName> values = [auto, never];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCheckoutSessionsRequestCustomerUpdateName && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestCustomerUpdateName($value)'; } 
 }
@immutable final class PostCheckoutSessionsRequestCustomerUpdateShipping {const PostCheckoutSessionsRequestCustomerUpdateShipping._(this.value);

factory PostCheckoutSessionsRequestCustomerUpdateShipping.fromJson(String json) { return switch (json) {
  'auto' => auto,
  'never' => never,
  _ => PostCheckoutSessionsRequestCustomerUpdateShipping._(json),
}; }

static const PostCheckoutSessionsRequestCustomerUpdateShipping auto = PostCheckoutSessionsRequestCustomerUpdateShipping._('auto');

static const PostCheckoutSessionsRequestCustomerUpdateShipping never = PostCheckoutSessionsRequestCustomerUpdateShipping._('never');

static const List<PostCheckoutSessionsRequestCustomerUpdateShipping> values = [auto, never];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCheckoutSessionsRequestCustomerUpdateShipping && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestCustomerUpdateShipping($value)'; } 
 }
/// Controls what fields on Customer can be updated by the Checkout Session. Can only be provided when `customer` is provided.
@immutable final class PostCheckoutSessionsRequestCustomerUpdate {const PostCheckoutSessionsRequestCustomerUpdate({this.address, this.name, this.shipping, });

factory PostCheckoutSessionsRequestCustomerUpdate.fromJson(Map<String, dynamic> json) { return PostCheckoutSessionsRequestCustomerUpdate(
  address: json['address'] != null ? PostCheckoutSessionsRequestCustomerUpdateAddress.fromJson(json['address'] as String) : null,
  name: json['name'] != null ? PostCheckoutSessionsRequestCustomerUpdateName.fromJson(json['name'] as String) : null,
  shipping: json['shipping'] != null ? PostCheckoutSessionsRequestCustomerUpdateShipping.fromJson(json['shipping'] as String) : null,
); }

final PostCheckoutSessionsRequestCustomerUpdateAddress? address;

final PostCheckoutSessionsRequestCustomerUpdateName? name;

final PostCheckoutSessionsRequestCustomerUpdateShipping? shipping;

Map<String, dynamic> toJson() { return {
  if (address != null) 'address': address?.toJson(),
  if (name != null) 'name': name?.toJson(),
  if (shipping != null) 'shipping': shipping?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'address', 'name', 'shipping'}.contains(key)); } 
PostCheckoutSessionsRequestCustomerUpdate copyWith({PostCheckoutSessionsRequestCustomerUpdateAddress Function()? address, PostCheckoutSessionsRequestCustomerUpdateName Function()? name, PostCheckoutSessionsRequestCustomerUpdateShipping Function()? shipping, }) { return PostCheckoutSessionsRequestCustomerUpdate(
  address: address != null ? address() : this.address,
  name: name != null ? name() : this.name,
  shipping: shipping != null ? shipping() : this.shipping,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCheckoutSessionsRequestCustomerUpdate &&
          address == other.address &&
          name == other.name &&
          shipping == other.shipping; } 
@override int get hashCode { return Object.hash(address, name, shipping); } 
@override String toString() { return 'PostCheckoutSessionsRequestCustomerUpdate(address: $address, name: $name, shipping: $shipping)'; } 
 }
