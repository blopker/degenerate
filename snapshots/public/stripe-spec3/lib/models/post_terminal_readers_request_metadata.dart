// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTerminalReadersRequestMetadataVariant2 {const PostTerminalReadersRequestMetadataVariant2._(this.value);

factory PostTerminalReadersRequestMetadataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTerminalReadersRequestMetadataVariant2._(json),
}; }

static const PostTerminalReadersRequestMetadataVariant2 $empty = PostTerminalReadersRequestMetadataVariant2._('');

static const List<PostTerminalReadersRequestMetadataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTerminalReadersRequestMetadataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTerminalReadersRequestMetadataVariant2($value)'; } 
 }
typedef PostTerminalReadersRequestMetadata = OneOf2<Map<String,String>,PostTerminalReadersRequestMetadataVariant2>;
