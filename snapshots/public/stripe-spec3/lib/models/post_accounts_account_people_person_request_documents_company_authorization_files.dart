// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostAccountsAccountPeoplePersonRequestDocumentsCompanyAuthorizationFilesVariant2 {const PostAccountsAccountPeoplePersonRequestDocumentsCompanyAuthorizationFilesVariant2._(this.value);

factory PostAccountsAccountPeoplePersonRequestDocumentsCompanyAuthorizationFilesVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostAccountsAccountPeoplePersonRequestDocumentsCompanyAuthorizationFilesVariant2._(json),
}; }

static const PostAccountsAccountPeoplePersonRequestDocumentsCompanyAuthorizationFilesVariant2 $empty = PostAccountsAccountPeoplePersonRequestDocumentsCompanyAuthorizationFilesVariant2._('');

static const List<PostAccountsAccountPeoplePersonRequestDocumentsCompanyAuthorizationFilesVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsAccountPeoplePersonRequestDocumentsCompanyAuthorizationFilesVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsAccountPeoplePersonRequestDocumentsCompanyAuthorizationFilesVariant2($value)'; } 
 }
typedef PostAccountsAccountPeoplePersonRequestDocumentsCompanyAuthorizationFiles = OneOf2<String,PostAccountsAccountPeoplePersonRequestDocumentsCompanyAuthorizationFilesVariant2>;