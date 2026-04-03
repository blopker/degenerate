// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsRequestGroupsPaymentsPricingVariant2 {const PostAccountsRequestGroupsPaymentsPricingVariant2._(this.value);

factory PostAccountsRequestGroupsPaymentsPricingVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostAccountsRequestGroupsPaymentsPricingVariant2._(json),
}; }

static const PostAccountsRequestGroupsPaymentsPricingVariant2 $empty = PostAccountsRequestGroupsPaymentsPricingVariant2._('');

static const List<PostAccountsRequestGroupsPaymentsPricingVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsRequestGroupsPaymentsPricingVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsRequestGroupsPaymentsPricingVariant2($value)'; } 
 }
typedef PostAccountsRequestGroupsPaymentsPricing = OneOf2<String,PostAccountsRequestGroupsPaymentsPricingVariant2>;
