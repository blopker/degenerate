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

@immutable
final class PostAccountsAccountPersonsPersonRequestDocumentsPassportFiles {
  const PostAccountsAccountPersonsPersonRequestDocumentsPassportFiles({this.string = const Omittable.absent(),
this.postAccountsAccountPersonsPersonRequestDocumentsPassportFilesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostAccountsAccountPersonsPersonRequestDocumentsPassportFiles._({required this.rawValue, required this.string,
required this.postAccountsAccountPersonsPersonRequestDocumentsPassportFilesVariant2,});
  factory PostAccountsAccountPersonsPersonRequestDocumentsPassportFiles.fromJson(Object? json) => PostAccountsAccountPersonsPersonRequestDocumentsPassportFiles._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postAccountsAccountPersonsPersonRequestDocumentsPassportFilesVariant2: parseAnyOfVariant<PostAccountsAccountPersonsPersonRequestDocumentsPassportFilesVariant2>(json, (value) => PostAccountsAccountPersonsPersonRequestDocumentsPassportFilesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostAccountsAccountPersonsPersonRequestDocumentsPassportFilesVariant2> postAccountsAccountPersonsPersonRequestDocumentsPassportFilesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postAccountsAccountPersonsPersonRequestDocumentsPassportFilesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postAccountsAccountPersonsPersonRequestDocumentsPassportFilesVariant2.isPresent) postAccountsAccountPersonsPersonRequestDocumentsPassportFilesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostAccountsAccountPersonsPersonRequestDocumentsPassportFiles && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostAccountsAccountPersonsPersonRequestDocumentsPassportFiles(${toJson()})';
}
