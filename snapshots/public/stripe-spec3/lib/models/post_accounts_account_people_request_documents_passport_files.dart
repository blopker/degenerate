// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostAccountsAccountPeopleRequestDocumentsPassportFilesVariant2 {const PostAccountsAccountPeopleRequestDocumentsPassportFilesVariant2._(this.value);

factory PostAccountsAccountPeopleRequestDocumentsPassportFilesVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostAccountsAccountPeopleRequestDocumentsPassportFilesVariant2._(json),
}; }

static const PostAccountsAccountPeopleRequestDocumentsPassportFilesVariant2 $empty = PostAccountsAccountPeopleRequestDocumentsPassportFilesVariant2._('');

static const List<PostAccountsAccountPeopleRequestDocumentsPassportFilesVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsAccountPeopleRequestDocumentsPassportFilesVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsAccountPeopleRequestDocumentsPassportFilesVariant2($value)'; } 
 }
typedef PostAccountsAccountPeopleRequestDocumentsPassportFiles = OneOf2<String,PostAccountsAccountPeopleRequestDocumentsPassportFilesVariant2>;