// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostTaxCalculationsRequestCustomerDetailsAddressPostalCodeVariant2 {const PostTaxCalculationsRequestCustomerDetailsAddressPostalCodeVariant2._(this.value);

factory PostTaxCalculationsRequestCustomerDetailsAddressPostalCodeVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTaxCalculationsRequestCustomerDetailsAddressPostalCodeVariant2._(json),
}; }

static const PostTaxCalculationsRequestCustomerDetailsAddressPostalCodeVariant2 $empty = PostTaxCalculationsRequestCustomerDetailsAddressPostalCodeVariant2._('');

static const List<PostTaxCalculationsRequestCustomerDetailsAddressPostalCodeVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxCalculationsRequestCustomerDetailsAddressPostalCodeVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxCalculationsRequestCustomerDetailsAddressPostalCodeVariant2($value)'; } 
 }
typedef PostTaxCalculationsRequestCustomerDetailsAddressPostalCode = OneOf2<String,PostTaxCalculationsRequestCustomerDetailsAddressPostalCodeVariant2>;