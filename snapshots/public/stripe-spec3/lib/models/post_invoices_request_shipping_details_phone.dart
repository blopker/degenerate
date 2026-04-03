// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostInvoicesRequestShippingDetailsPhoneVariant2 {const PostInvoicesRequestShippingDetailsPhoneVariant2._(this.value);

factory PostInvoicesRequestShippingDetailsPhoneVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesRequestShippingDetailsPhoneVariant2._(json),
}; }

static const PostInvoicesRequestShippingDetailsPhoneVariant2 $empty = PostInvoicesRequestShippingDetailsPhoneVariant2._('');

static const List<PostInvoicesRequestShippingDetailsPhoneVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesRequestShippingDetailsPhoneVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesRequestShippingDetailsPhoneVariant2($value)'; } 
 }
typedef PostInvoicesRequestShippingDetailsPhone = OneOf2<String,PostInvoicesRequestShippingDetailsPhoneVariant2>;
