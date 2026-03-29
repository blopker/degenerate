// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostTokensRequestAccountIndividualMetadataVariant2 {const PostTokensRequestAccountIndividualMetadataVariant2._(this.value);

factory PostTokensRequestAccountIndividualMetadataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTokensRequestAccountIndividualMetadataVariant2._(json),
}; }

static const PostTokensRequestAccountIndividualMetadataVariant2 $empty = PostTokensRequestAccountIndividualMetadataVariant2._('');

static const List<PostTokensRequestAccountIndividualMetadataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTokensRequestAccountIndividualMetadataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTokensRequestAccountIndividualMetadataVariant2($value)'; } 
 }
typedef PostTokensRequestAccountIndividualMetadata = OneOf2<Map<String,String>,PostTokensRequestAccountIndividualMetadataVariant2>;