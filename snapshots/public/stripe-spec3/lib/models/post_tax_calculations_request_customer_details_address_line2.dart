// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostTaxCalculationsRequestCustomerDetailsAddressLine2Variant2 {const PostTaxCalculationsRequestCustomerDetailsAddressLine2Variant2._(this.value);

factory PostTaxCalculationsRequestCustomerDetailsAddressLine2Variant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTaxCalculationsRequestCustomerDetailsAddressLine2Variant2._(json),
}; }

static const PostTaxCalculationsRequestCustomerDetailsAddressLine2Variant2 $empty = PostTaxCalculationsRequestCustomerDetailsAddressLine2Variant2._('');

static const List<PostTaxCalculationsRequestCustomerDetailsAddressLine2Variant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxCalculationsRequestCustomerDetailsAddressLine2Variant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxCalculationsRequestCustomerDetailsAddressLine2Variant2($value)'; } 
 }
typedef PostTaxCalculationsRequestCustomerDetailsAddressLine2 = OneOf2<String,PostTaxCalculationsRequestCustomerDetailsAddressLine2Variant2>;