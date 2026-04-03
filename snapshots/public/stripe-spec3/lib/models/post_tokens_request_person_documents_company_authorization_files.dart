// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTokensRequestPersonDocumentsCompanyAuthorizationFilesVariant2 {const PostTokensRequestPersonDocumentsCompanyAuthorizationFilesVariant2._(this.value);

factory PostTokensRequestPersonDocumentsCompanyAuthorizationFilesVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTokensRequestPersonDocumentsCompanyAuthorizationFilesVariant2._(json),
}; }

static const PostTokensRequestPersonDocumentsCompanyAuthorizationFilesVariant2 $empty = PostTokensRequestPersonDocumentsCompanyAuthorizationFilesVariant2._('');

static const List<PostTokensRequestPersonDocumentsCompanyAuthorizationFilesVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTokensRequestPersonDocumentsCompanyAuthorizationFilesVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTokensRequestPersonDocumentsCompanyAuthorizationFilesVariant2($value)'; } 
 }
typedef PostTokensRequestPersonDocumentsCompanyAuthorizationFiles = OneOf2<String,PostTokensRequestPersonDocumentsCompanyAuthorizationFilesVariant2>;
