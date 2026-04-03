// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptorSuffixVariant2 {const PostPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptorSuffixVariant2._(this.value);

factory PostPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptorSuffixVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptorSuffixVariant2._(json),
}; }

static const PostPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptorSuffixVariant2 $empty = PostPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptorSuffixVariant2._('');

static const List<PostPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptorSuffixVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptorSuffixVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptorSuffixVariant2($value)'; } 
 }
typedef PostPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptorSuffix = OneOf2<String,PostPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptorSuffixVariant2>;
