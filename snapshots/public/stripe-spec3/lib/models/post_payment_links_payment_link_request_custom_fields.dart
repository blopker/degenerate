// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_payment_links_payment_link_request_custom_fields_variant1.dart';final class PostPaymentLinksPaymentLinkRequestCustomFieldsVariant2 {const PostPaymentLinksPaymentLinkRequestCustomFieldsVariant2._(this.value);

factory PostPaymentLinksPaymentLinkRequestCustomFieldsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentLinksPaymentLinkRequestCustomFieldsVariant2._(json),
}; }

static const PostPaymentLinksPaymentLinkRequestCustomFieldsVariant2 $empty = PostPaymentLinksPaymentLinkRequestCustomFieldsVariant2._('');

static const List<PostPaymentLinksPaymentLinkRequestCustomFieldsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentLinksPaymentLinkRequestCustomFieldsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentLinksPaymentLinkRequestCustomFieldsVariant2($value)'; } 
 }
typedef PostPaymentLinksPaymentLinkRequestCustomFields = OneOf2<List<PostPaymentLinksPaymentLinkRequestCustomFieldsVariant1>,PostPaymentLinksPaymentLinkRequestCustomFieldsVariant2>;