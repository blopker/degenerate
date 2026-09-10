// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountPeopleRequestDocumentsPassportFilesVariant2 {const PostAccountsAccountPeopleRequestDocumentsPassportFilesVariant2._(this.value);

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

@immutable
final class PostAccountsAccountPeopleRequestDocumentsPassportFiles {
  const PostAccountsAccountPeopleRequestDocumentsPassportFiles({this.string = const Omittable.absent(),
this.postAccountsAccountPeopleRequestDocumentsPassportFilesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostAccountsAccountPeopleRequestDocumentsPassportFiles._({required this.rawValue, required this.string,
required this.postAccountsAccountPeopleRequestDocumentsPassportFilesVariant2,});
  factory PostAccountsAccountPeopleRequestDocumentsPassportFiles.fromJson(Object? json) => PostAccountsAccountPeopleRequestDocumentsPassportFiles._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postAccountsAccountPeopleRequestDocumentsPassportFilesVariant2: parseAnyOfVariant<PostAccountsAccountPeopleRequestDocumentsPassportFilesVariant2>(json, (value) => PostAccountsAccountPeopleRequestDocumentsPassportFilesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostAccountsAccountPeopleRequestDocumentsPassportFilesVariant2> postAccountsAccountPeopleRequestDocumentsPassportFilesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postAccountsAccountPeopleRequestDocumentsPassportFilesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postAccountsAccountPeopleRequestDocumentsPassportFilesVariant2.isPresent) postAccountsAccountPeopleRequestDocumentsPassportFilesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostAccountsAccountPeopleRequestDocumentsPassportFiles && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostAccountsAccountPeopleRequestDocumentsPassportFiles(${toJson()})';
}
