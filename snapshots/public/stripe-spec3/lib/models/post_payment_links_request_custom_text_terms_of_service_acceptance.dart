// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'custom_text_position_param8.dart';final class PostPaymentLinksRequestCustomTextTermsOfServiceAcceptanceVariant2 {const PostPaymentLinksRequestCustomTextTermsOfServiceAcceptanceVariant2._(this.value);

factory PostPaymentLinksRequestCustomTextTermsOfServiceAcceptanceVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentLinksRequestCustomTextTermsOfServiceAcceptanceVariant2._(json),
}; }

static const PostPaymentLinksRequestCustomTextTermsOfServiceAcceptanceVariant2 $empty = PostPaymentLinksRequestCustomTextTermsOfServiceAcceptanceVariant2._('');

static const List<PostPaymentLinksRequestCustomTextTermsOfServiceAcceptanceVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentLinksRequestCustomTextTermsOfServiceAcceptanceVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentLinksRequestCustomTextTermsOfServiceAcceptanceVariant2($value)'; } 
 }
typedef PostPaymentLinksRequestCustomTextTermsOfServiceAcceptance = OneOf2<CustomTextPositionParam8,PostPaymentLinksRequestCustomTextTermsOfServiceAcceptanceVariant2>;