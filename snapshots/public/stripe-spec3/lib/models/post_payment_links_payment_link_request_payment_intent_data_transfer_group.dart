// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentLinksPaymentLinkRequestPaymentIntentDataTransferGroupVariant2 {const PostPaymentLinksPaymentLinkRequestPaymentIntentDataTransferGroupVariant2._(this.value);

factory PostPaymentLinksPaymentLinkRequestPaymentIntentDataTransferGroupVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentLinksPaymentLinkRequestPaymentIntentDataTransferGroupVariant2._(json),
}; }

static const PostPaymentLinksPaymentLinkRequestPaymentIntentDataTransferGroupVariant2 $empty = PostPaymentLinksPaymentLinkRequestPaymentIntentDataTransferGroupVariant2._('');

static const List<PostPaymentLinksPaymentLinkRequestPaymentIntentDataTransferGroupVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentLinksPaymentLinkRequestPaymentIntentDataTransferGroupVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentLinksPaymentLinkRequestPaymentIntentDataTransferGroupVariant2($value)'; } 
 }
typedef PostPaymentLinksPaymentLinkRequestPaymentIntentDataTransferGroup = OneOf2<String,PostPaymentLinksPaymentLinkRequestPaymentIntentDataTransferGroupVariant2>;
