// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostPaymentLinksPaymentLinkRequestInactiveMessageVariant2 {const PostPaymentLinksPaymentLinkRequestInactiveMessageVariant2._(this.value);

factory PostPaymentLinksPaymentLinkRequestInactiveMessageVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentLinksPaymentLinkRequestInactiveMessageVariant2._(json),
}; }

static const PostPaymentLinksPaymentLinkRequestInactiveMessageVariant2 $empty = PostPaymentLinksPaymentLinkRequestInactiveMessageVariant2._('');

static const List<PostPaymentLinksPaymentLinkRequestInactiveMessageVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentLinksPaymentLinkRequestInactiveMessageVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentLinksPaymentLinkRequestInactiveMessageVariant2($value)'; } 
 }
typedef PostPaymentLinksPaymentLinkRequestInactiveMessage = OneOf2<String,PostPaymentLinksPaymentLinkRequestInactiveMessageVariant2>;