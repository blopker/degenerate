// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTransfersIdReversalsRequestMetadataVariant2 {const PostTransfersIdReversalsRequestMetadataVariant2._(this.value);

factory PostTransfersIdReversalsRequestMetadataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTransfersIdReversalsRequestMetadataVariant2._(json),
}; }

static const PostTransfersIdReversalsRequestMetadataVariant2 $empty = PostTransfersIdReversalsRequestMetadataVariant2._('');

static const List<PostTransfersIdReversalsRequestMetadataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTransfersIdReversalsRequestMetadataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTransfersIdReversalsRequestMetadataVariant2($value)'; } 
 }
typedef PostTransfersIdReversalsRequestMetadata = OneOf2<Map<String,String>,PostTransfersIdReversalsRequestMetadataVariant2>;
