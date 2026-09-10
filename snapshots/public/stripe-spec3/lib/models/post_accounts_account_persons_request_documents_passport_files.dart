// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountPersonsRequestDocumentsPassportFilesVariant2 {const PostAccountsAccountPersonsRequestDocumentsPassportFilesVariant2._(this.value);

factory PostAccountsAccountPersonsRequestDocumentsPassportFilesVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostAccountsAccountPersonsRequestDocumentsPassportFilesVariant2._(json),
}; }

static const PostAccountsAccountPersonsRequestDocumentsPassportFilesVariant2 $empty = PostAccountsAccountPersonsRequestDocumentsPassportFilesVariant2._('');

static const List<PostAccountsAccountPersonsRequestDocumentsPassportFilesVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsAccountPersonsRequestDocumentsPassportFilesVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsAccountPersonsRequestDocumentsPassportFilesVariant2($value)'; } 
 }

@immutable
final class PostAccountsAccountPersonsRequestDocumentsPassportFiles {
  const PostAccountsAccountPersonsRequestDocumentsPassportFiles({this.string = const Omittable.absent(),
this.postAccountsAccountPersonsRequestDocumentsPassportFilesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostAccountsAccountPersonsRequestDocumentsPassportFiles._({required this.rawValue, required this.string,
required this.postAccountsAccountPersonsRequestDocumentsPassportFilesVariant2,});
  factory PostAccountsAccountPersonsRequestDocumentsPassportFiles.fromJson(Object? json) => PostAccountsAccountPersonsRequestDocumentsPassportFiles._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postAccountsAccountPersonsRequestDocumentsPassportFilesVariant2: parseAnyOfVariant<PostAccountsAccountPersonsRequestDocumentsPassportFilesVariant2>(json, (value) => PostAccountsAccountPersonsRequestDocumentsPassportFilesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostAccountsAccountPersonsRequestDocumentsPassportFilesVariant2> postAccountsAccountPersonsRequestDocumentsPassportFilesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postAccountsAccountPersonsRequestDocumentsPassportFilesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postAccountsAccountPersonsRequestDocumentsPassportFilesVariant2.isPresent) postAccountsAccountPersonsRequestDocumentsPassportFilesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostAccountsAccountPersonsRequestDocumentsPassportFiles && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostAccountsAccountPersonsRequestDocumentsPassportFiles(${toJson()})';
}
