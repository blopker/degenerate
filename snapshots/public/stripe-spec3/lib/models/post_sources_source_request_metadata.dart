// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostSourcesSourceRequestMetadataVariant2 {const PostSourcesSourceRequestMetadataVariant2._(this.value);

factory PostSourcesSourceRequestMetadataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSourcesSourceRequestMetadataVariant2._(json),
}; }

static const PostSourcesSourceRequestMetadataVariant2 $empty = PostSourcesSourceRequestMetadataVariant2._('');

static const List<PostSourcesSourceRequestMetadataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSourcesSourceRequestMetadataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSourcesSourceRequestMetadataVariant2($value)'; } 
 }
typedef PostSourcesSourceRequestMetadata = OneOf2<Map<String,String>,PostSourcesSourceRequestMetadataVariant2>;