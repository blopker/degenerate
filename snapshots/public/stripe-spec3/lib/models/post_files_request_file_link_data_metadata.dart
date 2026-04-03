// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostFilesRequestFileLinkDataMetadataVariant2 {const PostFilesRequestFileLinkDataMetadataVariant2._(this.value);

factory PostFilesRequestFileLinkDataMetadataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostFilesRequestFileLinkDataMetadataVariant2._(json),
}; }

static const PostFilesRequestFileLinkDataMetadataVariant2 $empty = PostFilesRequestFileLinkDataMetadataVariant2._('');

static const List<PostFilesRequestFileLinkDataMetadataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostFilesRequestFileLinkDataMetadataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostFilesRequestFileLinkDataMetadataVariant2($value)'; } 
 }
typedef PostFilesRequestFileLinkDataMetadata = OneOf2<Map<String,String>,PostFilesRequestFileLinkDataMetadataVariant2>;
