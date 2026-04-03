// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountPersonsPersonRequestDocumentsPassportFilesVariant2 {const PostAccountsAccountPersonsPersonRequestDocumentsPassportFilesVariant2._(this.value);

factory PostAccountsAccountPersonsPersonRequestDocumentsPassportFilesVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostAccountsAccountPersonsPersonRequestDocumentsPassportFilesVariant2._(json),
}; }

static const PostAccountsAccountPersonsPersonRequestDocumentsPassportFilesVariant2 $empty = PostAccountsAccountPersonsPersonRequestDocumentsPassportFilesVariant2._('');

static const List<PostAccountsAccountPersonsPersonRequestDocumentsPassportFilesVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsAccountPersonsPersonRequestDocumentsPassportFilesVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsAccountPersonsPersonRequestDocumentsPassportFilesVariant2($value)'; } 
 }
typedef PostAccountsAccountPersonsPersonRequestDocumentsPassportFiles = OneOf2<String,PostAccountsAccountPersonsPersonRequestDocumentsPassportFilesVariant2>;
