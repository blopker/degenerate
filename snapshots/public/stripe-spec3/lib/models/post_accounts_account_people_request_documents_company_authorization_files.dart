// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountPeopleRequestDocumentsCompanyAuthorizationFilesVariant2 {const PostAccountsAccountPeopleRequestDocumentsCompanyAuthorizationFilesVariant2._(this.value);

factory PostAccountsAccountPeopleRequestDocumentsCompanyAuthorizationFilesVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostAccountsAccountPeopleRequestDocumentsCompanyAuthorizationFilesVariant2._(json),
}; }

static const PostAccountsAccountPeopleRequestDocumentsCompanyAuthorizationFilesVariant2 $empty = PostAccountsAccountPeopleRequestDocumentsCompanyAuthorizationFilesVariant2._('');

static const List<PostAccountsAccountPeopleRequestDocumentsCompanyAuthorizationFilesVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsAccountPeopleRequestDocumentsCompanyAuthorizationFilesVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsAccountPeopleRequestDocumentsCompanyAuthorizationFilesVariant2($value)'; } 
 }

@immutable
final class PostAccountsAccountPeopleRequestDocumentsCompanyAuthorizationFiles {
  const PostAccountsAccountPeopleRequestDocumentsCompanyAuthorizationFiles({this.string = const Omittable.absent(),
this.postAccountsAccountPeopleRequestDocumentsCompanyAuthorizationFilesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostAccountsAccountPeopleRequestDocumentsCompanyAuthorizationFiles._({required this.rawValue, required this.string,
required this.postAccountsAccountPeopleRequestDocumentsCompanyAuthorizationFilesVariant2,});
  factory PostAccountsAccountPeopleRequestDocumentsCompanyAuthorizationFiles.fromJson(Object? json) => PostAccountsAccountPeopleRequestDocumentsCompanyAuthorizationFiles._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postAccountsAccountPeopleRequestDocumentsCompanyAuthorizationFilesVariant2: parseAnyOfVariant<PostAccountsAccountPeopleRequestDocumentsCompanyAuthorizationFilesVariant2>(json, (value) => PostAccountsAccountPeopleRequestDocumentsCompanyAuthorizationFilesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostAccountsAccountPeopleRequestDocumentsCompanyAuthorizationFilesVariant2> postAccountsAccountPeopleRequestDocumentsCompanyAuthorizationFilesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postAccountsAccountPeopleRequestDocumentsCompanyAuthorizationFilesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postAccountsAccountPeopleRequestDocumentsCompanyAuthorizationFilesVariant2.isPresent) postAccountsAccountPeopleRequestDocumentsCompanyAuthorizationFilesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostAccountsAccountPeopleRequestDocumentsCompanyAuthorizationFiles && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostAccountsAccountPeopleRequestDocumentsCompanyAuthorizationFiles(${toJson()})';
}
