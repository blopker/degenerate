// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTerminalReadersReaderRequestMetadataVariant2 {const PostTerminalReadersReaderRequestMetadataVariant2._(this.value);

factory PostTerminalReadersReaderRequestMetadataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTerminalReadersReaderRequestMetadataVariant2._(json),
}; }

static const PostTerminalReadersReaderRequestMetadataVariant2 $empty = PostTerminalReadersReaderRequestMetadataVariant2._('');

static const List<PostTerminalReadersReaderRequestMetadataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTerminalReadersReaderRequestMetadataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTerminalReadersReaderRequestMetadataVariant2($value)'; } 
 }
typedef PostTerminalReadersReaderRequestMetadata = OneOf2<Map<String,String>,PostTerminalReadersReaderRequestMetadataVariant2>;
