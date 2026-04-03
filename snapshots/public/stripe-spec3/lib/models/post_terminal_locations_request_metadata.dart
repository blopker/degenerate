// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTerminalLocationsRequestMetadataVariant2 {const PostTerminalLocationsRequestMetadataVariant2._(this.value);

factory PostTerminalLocationsRequestMetadataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTerminalLocationsRequestMetadataVariant2._(json),
}; }

static const PostTerminalLocationsRequestMetadataVariant2 $empty = PostTerminalLocationsRequestMetadataVariant2._('');

static const List<PostTerminalLocationsRequestMetadataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTerminalLocationsRequestMetadataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTerminalLocationsRequestMetadataVariant2($value)'; } 
 }
typedef PostTerminalLocationsRequestMetadata = OneOf2<Map<String,String>,PostTerminalLocationsRequestMetadataVariant2>;
