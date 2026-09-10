// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountPeopleRequestDocumentsVisaFilesVariant2 {const PostAccountsAccountPeopleRequestDocumentsVisaFilesVariant2._(this.value);

factory PostAccountsAccountPeopleRequestDocumentsVisaFilesVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostAccountsAccountPeopleRequestDocumentsVisaFilesVariant2._(json),
}; }

static const PostAccountsAccountPeopleRequestDocumentsVisaFilesVariant2 $empty = PostAccountsAccountPeopleRequestDocumentsVisaFilesVariant2._('');

static const List<PostAccountsAccountPeopleRequestDocumentsVisaFilesVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsAccountPeopleRequestDocumentsVisaFilesVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsAccountPeopleRequestDocumentsVisaFilesVariant2($value)'; } 
 }

@immutable
final class PostAccountsAccountPeopleRequestDocumentsVisaFiles {
  const PostAccountsAccountPeopleRequestDocumentsVisaFiles({this.string = const Omittable.absent(),
this.postAccountsAccountPeopleRequestDocumentsVisaFilesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostAccountsAccountPeopleRequestDocumentsVisaFiles._({required this.rawValue, required this.string,
required this.postAccountsAccountPeopleRequestDocumentsVisaFilesVariant2,});
  factory PostAccountsAccountPeopleRequestDocumentsVisaFiles.fromJson(Object? json) => PostAccountsAccountPeopleRequestDocumentsVisaFiles._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postAccountsAccountPeopleRequestDocumentsVisaFilesVariant2: parseAnyOfVariant<PostAccountsAccountPeopleRequestDocumentsVisaFilesVariant2>(json, (value) => PostAccountsAccountPeopleRequestDocumentsVisaFilesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostAccountsAccountPeopleRequestDocumentsVisaFilesVariant2> postAccountsAccountPeopleRequestDocumentsVisaFilesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postAccountsAccountPeopleRequestDocumentsVisaFilesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postAccountsAccountPeopleRequestDocumentsVisaFilesVariant2.isPresent) postAccountsAccountPeopleRequestDocumentsVisaFilesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostAccountsAccountPeopleRequestDocumentsVisaFiles && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostAccountsAccountPeopleRequestDocumentsVisaFiles(${toJson()})';
}
