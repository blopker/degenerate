// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostChargesRequestMetadataVariant2 {const PostChargesRequestMetadataVariant2._(this.value);

factory PostChargesRequestMetadataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostChargesRequestMetadataVariant2._(json),
}; }

static const PostChargesRequestMetadataVariant2 $empty = PostChargesRequestMetadataVariant2._('');

static const List<PostChargesRequestMetadataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostChargesRequestMetadataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostChargesRequestMetadataVariant2($value)'; } 
 }
typedef PostChargesRequestMetadata = OneOf2<Map<String,String>,PostChargesRequestMetadataVariant2>;