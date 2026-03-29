// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostPlansRequestMetadataVariant2 {const PostPlansRequestMetadataVariant2._(this.value);

factory PostPlansRequestMetadataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPlansRequestMetadataVariant2._(json),
}; }

static const PostPlansRequestMetadataVariant2 $empty = PostPlansRequestMetadataVariant2._('');

static const List<PostPlansRequestMetadataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPlansRequestMetadataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPlansRequestMetadataVariant2($value)'; } 
 }
typedef PostPlansRequestMetadata = OneOf2<Map<String,String>,PostPlansRequestMetadataVariant2>;