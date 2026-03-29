// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostTerminalLocationsLocationRequestMetadataVariant2 {const PostTerminalLocationsLocationRequestMetadataVariant2._(this.value);

factory PostTerminalLocationsLocationRequestMetadataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTerminalLocationsLocationRequestMetadataVariant2._(json),
}; }

static const PostTerminalLocationsLocationRequestMetadataVariant2 $empty = PostTerminalLocationsLocationRequestMetadataVariant2._('');

static const List<PostTerminalLocationsLocationRequestMetadataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTerminalLocationsLocationRequestMetadataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTerminalLocationsLocationRequestMetadataVariant2($value)'; } 
 }
typedef PostTerminalLocationsLocationRequestMetadata = OneOf2<Map<String,String>,PostTerminalLocationsLocationRequestMetadataVariant2>;