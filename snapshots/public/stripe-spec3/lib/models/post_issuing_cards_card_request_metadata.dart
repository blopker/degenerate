// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostIssuingCardsCardRequestMetadataVariant2 {const PostIssuingCardsCardRequestMetadataVariant2._(this.value);

factory PostIssuingCardsCardRequestMetadataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostIssuingCardsCardRequestMetadataVariant2._(json),
}; }

static const PostIssuingCardsCardRequestMetadataVariant2 $empty = PostIssuingCardsCardRequestMetadataVariant2._('');

static const List<PostIssuingCardsCardRequestMetadataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostIssuingCardsCardRequestMetadataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostIssuingCardsCardRequestMetadataVariant2($value)'; } 
 }
typedef PostIssuingCardsCardRequestMetadata = OneOf2<Map<String,String>,PostIssuingCardsCardRequestMetadataVariant2>;