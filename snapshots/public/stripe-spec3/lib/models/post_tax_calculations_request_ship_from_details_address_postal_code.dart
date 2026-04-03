// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTaxCalculationsRequestShipFromDetailsAddressPostalCodeVariant2 {const PostTaxCalculationsRequestShipFromDetailsAddressPostalCodeVariant2._(this.value);

factory PostTaxCalculationsRequestShipFromDetailsAddressPostalCodeVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTaxCalculationsRequestShipFromDetailsAddressPostalCodeVariant2._(json),
}; }

static const PostTaxCalculationsRequestShipFromDetailsAddressPostalCodeVariant2 $empty = PostTaxCalculationsRequestShipFromDetailsAddressPostalCodeVariant2._('');

static const List<PostTaxCalculationsRequestShipFromDetailsAddressPostalCodeVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxCalculationsRequestShipFromDetailsAddressPostalCodeVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxCalculationsRequestShipFromDetailsAddressPostalCodeVariant2($value)'; } 
 }
typedef PostTaxCalculationsRequestShipFromDetailsAddressPostalCode = OneOf2<String,PostTaxCalculationsRequestShipFromDetailsAddressPostalCodeVariant2>;
