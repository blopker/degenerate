// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostPayoutsPayoutRequestMetadataVariant2 {const PostPayoutsPayoutRequestMetadataVariant2._(this.value);

factory PostPayoutsPayoutRequestMetadataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPayoutsPayoutRequestMetadataVariant2._(json),
}; }

static const PostPayoutsPayoutRequestMetadataVariant2 $empty = PostPayoutsPayoutRequestMetadataVariant2._('');

static const List<PostPayoutsPayoutRequestMetadataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPayoutsPayoutRequestMetadataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPayoutsPayoutRequestMetadataVariant2($value)'; } 
 }
typedef PostPayoutsPayoutRequestMetadata = OneOf2<Map<String,String>,PostPayoutsPayoutRequestMetadataVariant2>;