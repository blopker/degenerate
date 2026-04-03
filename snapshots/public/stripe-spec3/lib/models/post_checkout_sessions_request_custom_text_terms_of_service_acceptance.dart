// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'custom_text_position_param4.dart';@immutable final class PostCheckoutSessionsRequestCustomTextTermsOfServiceAcceptanceVariant2 {const PostCheckoutSessionsRequestCustomTextTermsOfServiceAcceptanceVariant2._(this.value);

factory PostCheckoutSessionsRequestCustomTextTermsOfServiceAcceptanceVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostCheckoutSessionsRequestCustomTextTermsOfServiceAcceptanceVariant2._(json),
}; }

static const PostCheckoutSessionsRequestCustomTextTermsOfServiceAcceptanceVariant2 $empty = PostCheckoutSessionsRequestCustomTextTermsOfServiceAcceptanceVariant2._('');

static const List<PostCheckoutSessionsRequestCustomTextTermsOfServiceAcceptanceVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCheckoutSessionsRequestCustomTextTermsOfServiceAcceptanceVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestCustomTextTermsOfServiceAcceptanceVariant2($value)'; } 
 }
typedef PostCheckoutSessionsRequestCustomTextTermsOfServiceAcceptance = OneOf2<CustomTextPositionParam4,PostCheckoutSessionsRequestCustomTextTermsOfServiceAcceptanceVariant2>;
