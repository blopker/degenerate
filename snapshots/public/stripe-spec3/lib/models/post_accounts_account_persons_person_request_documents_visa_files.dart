// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountPersonsPersonRequestDocumentsVisaFilesVariant2 {const PostAccountsAccountPersonsPersonRequestDocumentsVisaFilesVariant2._(this.value);

factory PostAccountsAccountPersonsPersonRequestDocumentsVisaFilesVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostAccountsAccountPersonsPersonRequestDocumentsVisaFilesVariant2._(json),
};}

static const PostAccountsAccountPersonsPersonRequestDocumentsVisaFilesVariant2 $empty = PostAccountsAccountPersonsPersonRequestDocumentsVisaFilesVariant2._('');

static const List<PostAccountsAccountPersonsPersonRequestDocumentsVisaFilesVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostAccountsAccountPersonsPersonRequestDocumentsVisaFilesVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostAccountsAccountPersonsPersonRequestDocumentsVisaFilesVariant2($value)';}
}

@immutable
final class PostAccountsAccountPersonsPersonRequestDocumentsVisaFiles {
  const PostAccountsAccountPersonsPersonRequestDocumentsVisaFiles({this.string = const Omittable.absent(),
this.postAccountsAccountPersonsPersonRequestDocumentsVisaFilesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostAccountsAccountPersonsPersonRequestDocumentsVisaFiles._({required this.rawValue, required this.string,
required this.postAccountsAccountPersonsPersonRequestDocumentsVisaFilesVariant2,});
  factory PostAccountsAccountPersonsPersonRequestDocumentsVisaFiles.fromJson(Object? json) => PostAccountsAccountPersonsPersonRequestDocumentsVisaFiles._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postAccountsAccountPersonsPersonRequestDocumentsVisaFilesVariant2: parseAnyOfVariant<PostAccountsAccountPersonsPersonRequestDocumentsVisaFilesVariant2>(json, (value) => PostAccountsAccountPersonsPersonRequestDocumentsVisaFilesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostAccountsAccountPersonsPersonRequestDocumentsVisaFilesVariant2> postAccountsAccountPersonsPersonRequestDocumentsVisaFilesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postAccountsAccountPersonsPersonRequestDocumentsVisaFilesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postAccountsAccountPersonsPersonRequestDocumentsVisaFilesVariant2.isPresent) postAccountsAccountPersonsPersonRequestDocumentsVisaFilesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostAccountsAccountPersonsPersonRequestDocumentsVisaFiles && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostAccountsAccountPersonsPersonRequestDocumentsVisaFiles(${toJson()})';
}
