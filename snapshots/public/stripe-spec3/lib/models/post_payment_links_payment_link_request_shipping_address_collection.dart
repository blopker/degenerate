// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'shipping_address_collection_params.dart';@immutable final class PostPaymentLinksPaymentLinkRequestShippingAddressCollectionVariant2 {const PostPaymentLinksPaymentLinkRequestShippingAddressCollectionVariant2._(this.value);

factory PostPaymentLinksPaymentLinkRequestShippingAddressCollectionVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentLinksPaymentLinkRequestShippingAddressCollectionVariant2._(json),
}; }

static const PostPaymentLinksPaymentLinkRequestShippingAddressCollectionVariant2 $empty = PostPaymentLinksPaymentLinkRequestShippingAddressCollectionVariant2._('');

static const List<PostPaymentLinksPaymentLinkRequestShippingAddressCollectionVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentLinksPaymentLinkRequestShippingAddressCollectionVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentLinksPaymentLinkRequestShippingAddressCollectionVariant2($value)'; } 
 }
typedef PostPaymentLinksPaymentLinkRequestShippingAddressCollection = OneOf2<ShippingAddressCollectionParams,PostPaymentLinksPaymentLinkRequestShippingAddressCollectionVariant2>;
