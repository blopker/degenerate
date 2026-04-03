// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentLinksPaymentLinkRequestPaymentIntentDataDescriptionVariant2 {const PostPaymentLinksPaymentLinkRequestPaymentIntentDataDescriptionVariant2._(this.value);

factory PostPaymentLinksPaymentLinkRequestPaymentIntentDataDescriptionVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentLinksPaymentLinkRequestPaymentIntentDataDescriptionVariant2._(json),
}; }

static const PostPaymentLinksPaymentLinkRequestPaymentIntentDataDescriptionVariant2 $empty = PostPaymentLinksPaymentLinkRequestPaymentIntentDataDescriptionVariant2._('');

static const List<PostPaymentLinksPaymentLinkRequestPaymentIntentDataDescriptionVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentLinksPaymentLinkRequestPaymentIntentDataDescriptionVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentLinksPaymentLinkRequestPaymentIntentDataDescriptionVariant2($value)'; } 
 }
typedef PostPaymentLinksPaymentLinkRequestPaymentIntentDataDescription = OneOf2<String,PostPaymentLinksPaymentLinkRequestPaymentIntentDataDescriptionVariant2>;
