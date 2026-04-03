// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostIssuingAuthorizationsAuthorizationRequestMetadataVariant2 {const PostIssuingAuthorizationsAuthorizationRequestMetadataVariant2._(this.value);

factory PostIssuingAuthorizationsAuthorizationRequestMetadataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostIssuingAuthorizationsAuthorizationRequestMetadataVariant2._(json),
}; }

static const PostIssuingAuthorizationsAuthorizationRequestMetadataVariant2 $empty = PostIssuingAuthorizationsAuthorizationRequestMetadataVariant2._('');

static const List<PostIssuingAuthorizationsAuthorizationRequestMetadataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostIssuingAuthorizationsAuthorizationRequestMetadataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostIssuingAuthorizationsAuthorizationRequestMetadataVariant2($value)'; } 
 }
typedef PostIssuingAuthorizationsAuthorizationRequestMetadata = OneOf2<Map<String,String>,PostIssuingAuthorizationsAuthorizationRequestMetadataVariant2>;
