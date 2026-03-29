// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostPaymentIntentsIntentRequestMetadataVariant2 {const PostPaymentIntentsIntentRequestMetadataVariant2._(this.value);

factory PostPaymentIntentsIntentRequestMetadataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestMetadataVariant2._(json),
}; }

static const PostPaymentIntentsIntentRequestMetadataVariant2 $empty = PostPaymentIntentsIntentRequestMetadataVariant2._('');

static const List<PostPaymentIntentsIntentRequestMetadataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestMetadataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentRequestMetadataVariant2($value)'; } 
 }
typedef PostPaymentIntentsIntentRequestMetadata = OneOf2<Map<String,String>,PostPaymentIntentsIntentRequestMetadataVariant2>;