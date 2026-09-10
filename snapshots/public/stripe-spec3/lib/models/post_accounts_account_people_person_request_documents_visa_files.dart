// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountPeoplePersonRequestDocumentsVisaFilesVariant2 {const PostAccountsAccountPeoplePersonRequestDocumentsVisaFilesVariant2._(this.value);

factory PostAccountsAccountPeoplePersonRequestDocumentsVisaFilesVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostAccountsAccountPeoplePersonRequestDocumentsVisaFilesVariant2._(json),
}; }

static const PostAccountsAccountPeoplePersonRequestDocumentsVisaFilesVariant2 $empty = PostAccountsAccountPeoplePersonRequestDocumentsVisaFilesVariant2._('');

static const List<PostAccountsAccountPeoplePersonRequestDocumentsVisaFilesVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsAccountPeoplePersonRequestDocumentsVisaFilesVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsAccountPeoplePersonRequestDocumentsVisaFilesVariant2($value)'; } 
 }

@immutable
final class PostAccountsAccountPeoplePersonRequestDocumentsVisaFiles {
  const PostAccountsAccountPeoplePersonRequestDocumentsVisaFiles({this.string = const Omittable.absent(),
this.postAccountsAccountPeoplePersonRequestDocumentsVisaFilesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostAccountsAccountPeoplePersonRequestDocumentsVisaFiles._({required this.rawValue, required this.string,
required this.postAccountsAccountPeoplePersonRequestDocumentsVisaFilesVariant2,});
  factory PostAccountsAccountPeoplePersonRequestDocumentsVisaFiles.fromJson(Object? json) => PostAccountsAccountPeoplePersonRequestDocumentsVisaFiles._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postAccountsAccountPeoplePersonRequestDocumentsVisaFilesVariant2: parseAnyOfVariant<PostAccountsAccountPeoplePersonRequestDocumentsVisaFilesVariant2>(json, (value) => PostAccountsAccountPeoplePersonRequestDocumentsVisaFilesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostAccountsAccountPeoplePersonRequestDocumentsVisaFilesVariant2> postAccountsAccountPeoplePersonRequestDocumentsVisaFilesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postAccountsAccountPeoplePersonRequestDocumentsVisaFilesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postAccountsAccountPeoplePersonRequestDocumentsVisaFilesVariant2.isPresent) postAccountsAccountPeoplePersonRequestDocumentsVisaFilesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostAccountsAccountPeoplePersonRequestDocumentsVisaFiles && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostAccountsAccountPeoplePersonRequestDocumentsVisaFiles(${toJson()})';
}
