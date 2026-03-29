// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'custom_text_position_param10.dart';final class PostPaymentLinksPaymentLinkRequestCustomTextShippingAddressVariant2 {const PostPaymentLinksPaymentLinkRequestCustomTextShippingAddressVariant2._(this.value);

factory PostPaymentLinksPaymentLinkRequestCustomTextShippingAddressVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentLinksPaymentLinkRequestCustomTextShippingAddressVariant2._(json),
}; }

static const PostPaymentLinksPaymentLinkRequestCustomTextShippingAddressVariant2 $empty = PostPaymentLinksPaymentLinkRequestCustomTextShippingAddressVariant2._('');

static const List<PostPaymentLinksPaymentLinkRequestCustomTextShippingAddressVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentLinksPaymentLinkRequestCustomTextShippingAddressVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentLinksPaymentLinkRequestCustomTextShippingAddressVariant2($value)'; } 
 }
typedef PostPaymentLinksPaymentLinkRequestCustomTextShippingAddress = OneOf2<CustomTextPositionParam10,PostPaymentLinksPaymentLinkRequestCustomTextShippingAddressVariant2>;