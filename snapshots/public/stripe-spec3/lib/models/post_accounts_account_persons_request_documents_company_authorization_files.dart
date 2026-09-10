// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountPersonsRequestDocumentsCompanyAuthorizationFilesVariant2 {const PostAccountsAccountPersonsRequestDocumentsCompanyAuthorizationFilesVariant2._(this.value);

factory PostAccountsAccountPersonsRequestDocumentsCompanyAuthorizationFilesVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostAccountsAccountPersonsRequestDocumentsCompanyAuthorizationFilesVariant2._(json),
};}

static const PostAccountsAccountPersonsRequestDocumentsCompanyAuthorizationFilesVariant2 $empty = PostAccountsAccountPersonsRequestDocumentsCompanyAuthorizationFilesVariant2._('');

static const List<PostAccountsAccountPersonsRequestDocumentsCompanyAuthorizationFilesVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostAccountsAccountPersonsRequestDocumentsCompanyAuthorizationFilesVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostAccountsAccountPersonsRequestDocumentsCompanyAuthorizationFilesVariant2($value)';}
}

@immutable
final class PostAccountsAccountPersonsRequestDocumentsCompanyAuthorizationFiles {
  const PostAccountsAccountPersonsRequestDocumentsCompanyAuthorizationFiles({this.string = const Omittable.absent(),
this.postAccountsAccountPersonsRequestDocumentsCompanyAuthorizationFilesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostAccountsAccountPersonsRequestDocumentsCompanyAuthorizationFiles._({required this.rawValue, required this.string,
required this.postAccountsAccountPersonsRequestDocumentsCompanyAuthorizationFilesVariant2,});
  factory PostAccountsAccountPersonsRequestDocumentsCompanyAuthorizationFiles.fromJson(Object? json) => PostAccountsAccountPersonsRequestDocumentsCompanyAuthorizationFiles._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postAccountsAccountPersonsRequestDocumentsCompanyAuthorizationFilesVariant2: parseAnyOfVariant<PostAccountsAccountPersonsRequestDocumentsCompanyAuthorizationFilesVariant2>(json, (value) => PostAccountsAccountPersonsRequestDocumentsCompanyAuthorizationFilesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostAccountsAccountPersonsRequestDocumentsCompanyAuthorizationFilesVariant2> postAccountsAccountPersonsRequestDocumentsCompanyAuthorizationFilesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postAccountsAccountPersonsRequestDocumentsCompanyAuthorizationFilesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postAccountsAccountPersonsRequestDocumentsCompanyAuthorizationFilesVariant2.isPresent) postAccountsAccountPersonsRequestDocumentsCompanyAuthorizationFilesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostAccountsAccountPersonsRequestDocumentsCompanyAuthorizationFiles && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostAccountsAccountPersonsRequestDocumentsCompanyAuthorizationFiles(${toJson()})';
}
