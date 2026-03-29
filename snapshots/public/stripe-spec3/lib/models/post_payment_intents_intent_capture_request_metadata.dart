// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostPaymentIntentsIntentCaptureRequestMetadataVariant2 {const PostPaymentIntentsIntentCaptureRequestMetadataVariant2._(this.value);

factory PostPaymentIntentsIntentCaptureRequestMetadataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentCaptureRequestMetadataVariant2._(json),
}; }

static const PostPaymentIntentsIntentCaptureRequestMetadataVariant2 $empty = PostPaymentIntentsIntentCaptureRequestMetadataVariant2._('');

static const List<PostPaymentIntentsIntentCaptureRequestMetadataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentCaptureRequestMetadataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentCaptureRequestMetadataVariant2($value)'; } 
 }
typedef PostPaymentIntentsIntentCaptureRequestMetadata = OneOf2<Map<String,String>,PostPaymentIntentsIntentCaptureRequestMetadataVariant2>;