// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTaxCalculationsRequestShipFromDetailsAddressCityVariant2 {const PostTaxCalculationsRequestShipFromDetailsAddressCityVariant2._(this.value);

factory PostTaxCalculationsRequestShipFromDetailsAddressCityVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTaxCalculationsRequestShipFromDetailsAddressCityVariant2._(json),
}; }

static const PostTaxCalculationsRequestShipFromDetailsAddressCityVariant2 $empty = PostTaxCalculationsRequestShipFromDetailsAddressCityVariant2._('');

static const List<PostTaxCalculationsRequestShipFromDetailsAddressCityVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxCalculationsRequestShipFromDetailsAddressCityVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxCalculationsRequestShipFromDetailsAddressCityVariant2($value)'; } 
 }
typedef PostTaxCalculationsRequestShipFromDetailsAddressCity = OneOf2<String,PostTaxCalculationsRequestShipFromDetailsAddressCityVariant2>;
