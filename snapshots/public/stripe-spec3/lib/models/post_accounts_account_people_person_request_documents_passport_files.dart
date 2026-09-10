// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountPeoplePersonRequestDocumentsPassportFilesVariant2 {const PostAccountsAccountPeoplePersonRequestDocumentsPassportFilesVariant2._(this.value);

factory PostAccountsAccountPeoplePersonRequestDocumentsPassportFilesVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostAccountsAccountPeoplePersonRequestDocumentsPassportFilesVariant2._(json),
};}

static const PostAccountsAccountPeoplePersonRequestDocumentsPassportFilesVariant2 $empty = PostAccountsAccountPeoplePersonRequestDocumentsPassportFilesVariant2._('');

static const List<PostAccountsAccountPeoplePersonRequestDocumentsPassportFilesVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostAccountsAccountPeoplePersonRequestDocumentsPassportFilesVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostAccountsAccountPeoplePersonRequestDocumentsPassportFilesVariant2($value)';}
}

@immutable
final class PostAccountsAccountPeoplePersonRequestDocumentsPassportFiles {
  const PostAccountsAccountPeoplePersonRequestDocumentsPassportFiles({this.string = const Omittable.absent(),
this.postAccountsAccountPeoplePersonRequestDocumentsPassportFilesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostAccountsAccountPeoplePersonRequestDocumentsPassportFiles._({required this.rawValue, required this.string,
required this.postAccountsAccountPeoplePersonRequestDocumentsPassportFilesVariant2,});
  factory PostAccountsAccountPeoplePersonRequestDocumentsPassportFiles.fromJson(Object? json) => PostAccountsAccountPeoplePersonRequestDocumentsPassportFiles._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postAccountsAccountPeoplePersonRequestDocumentsPassportFilesVariant2: parseAnyOfVariant<PostAccountsAccountPeoplePersonRequestDocumentsPassportFilesVariant2>(json, (value) => PostAccountsAccountPeoplePersonRequestDocumentsPassportFilesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostAccountsAccountPeoplePersonRequestDocumentsPassportFilesVariant2> postAccountsAccountPeoplePersonRequestDocumentsPassportFilesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postAccountsAccountPeoplePersonRequestDocumentsPassportFilesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postAccountsAccountPeoplePersonRequestDocumentsPassportFilesVariant2.isPresent) postAccountsAccountPeoplePersonRequestDocumentsPassportFilesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostAccountsAccountPeoplePersonRequestDocumentsPassportFiles && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostAccountsAccountPeoplePersonRequestDocumentsPassportFiles(${toJson()})';
}
