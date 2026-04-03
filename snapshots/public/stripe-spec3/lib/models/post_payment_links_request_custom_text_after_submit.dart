// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'custom_text_position_param5.dart';@immutable final class PostPaymentLinksRequestCustomTextAfterSubmitVariant2 {const PostPaymentLinksRequestCustomTextAfterSubmitVariant2._(this.value);

factory PostPaymentLinksRequestCustomTextAfterSubmitVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentLinksRequestCustomTextAfterSubmitVariant2._(json),
}; }

static const PostPaymentLinksRequestCustomTextAfterSubmitVariant2 $empty = PostPaymentLinksRequestCustomTextAfterSubmitVariant2._('');

static const List<PostPaymentLinksRequestCustomTextAfterSubmitVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentLinksRequestCustomTextAfterSubmitVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentLinksRequestCustomTextAfterSubmitVariant2($value)'; } 
 }
typedef PostPaymentLinksRequestCustomTextAfterSubmit = OneOf2<CustomTextPositionParam5,PostPaymentLinksRequestCustomTextAfterSubmitVariant2>;
