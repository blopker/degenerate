// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostTestHelpersConfirmationTokensRequestShippingPhoneVariant2 {const PostTestHelpersConfirmationTokensRequestShippingPhoneVariant2._(this.value);

factory PostTestHelpersConfirmationTokensRequestShippingPhoneVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTestHelpersConfirmationTokensRequestShippingPhoneVariant2._(json),
}; }

static const PostTestHelpersConfirmationTokensRequestShippingPhoneVariant2 $empty = PostTestHelpersConfirmationTokensRequestShippingPhoneVariant2._('');

static const List<PostTestHelpersConfirmationTokensRequestShippingPhoneVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTestHelpersConfirmationTokensRequestShippingPhoneVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTestHelpersConfirmationTokensRequestShippingPhoneVariant2($value)'; } 
 }
typedef PostTestHelpersConfirmationTokensRequestShippingPhone = OneOf2<String,PostTestHelpersConfirmationTokensRequestShippingPhoneVariant2>;