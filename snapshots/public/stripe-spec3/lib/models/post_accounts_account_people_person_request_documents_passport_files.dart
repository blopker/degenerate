// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostAccountsAccountPeoplePersonRequestDocumentsPassportFilesVariant2 {const PostAccountsAccountPeoplePersonRequestDocumentsPassportFilesVariant2._(this.value);

factory PostAccountsAccountPeoplePersonRequestDocumentsPassportFilesVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostAccountsAccountPeoplePersonRequestDocumentsPassportFilesVariant2._(json),
}; }

static const PostAccountsAccountPeoplePersonRequestDocumentsPassportFilesVariant2 $empty = PostAccountsAccountPeoplePersonRequestDocumentsPassportFilesVariant2._('');

static const List<PostAccountsAccountPeoplePersonRequestDocumentsPassportFilesVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsAccountPeoplePersonRequestDocumentsPassportFilesVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsAccountPeoplePersonRequestDocumentsPassportFilesVariant2($value)'; } 
 }
typedef PostAccountsAccountPeoplePersonRequestDocumentsPassportFiles = OneOf2<String,PostAccountsAccountPeoplePersonRequestDocumentsPassportFilesVariant2>;