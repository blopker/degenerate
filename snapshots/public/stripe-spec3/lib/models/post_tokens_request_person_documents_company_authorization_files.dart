// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTokensRequestPersonDocumentsCompanyAuthorizationFilesVariant2 {const PostTokensRequestPersonDocumentsCompanyAuthorizationFilesVariant2._(this.value);

factory PostTokensRequestPersonDocumentsCompanyAuthorizationFilesVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTokensRequestPersonDocumentsCompanyAuthorizationFilesVariant2._(json),
}; }

static const PostTokensRequestPersonDocumentsCompanyAuthorizationFilesVariant2 $empty = PostTokensRequestPersonDocumentsCompanyAuthorizationFilesVariant2._('');

static const List<PostTokensRequestPersonDocumentsCompanyAuthorizationFilesVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTokensRequestPersonDocumentsCompanyAuthorizationFilesVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTokensRequestPersonDocumentsCompanyAuthorizationFilesVariant2($value)'; } 
 }

@immutable
final class PostTokensRequestPersonDocumentsCompanyAuthorizationFiles {
  const PostTokensRequestPersonDocumentsCompanyAuthorizationFiles({this.string = const Omittable.absent(),
this.postTokensRequestPersonDocumentsCompanyAuthorizationFilesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTokensRequestPersonDocumentsCompanyAuthorizationFiles._({required this.rawValue, required this.string,
required this.postTokensRequestPersonDocumentsCompanyAuthorizationFilesVariant2,});
  factory PostTokensRequestPersonDocumentsCompanyAuthorizationFiles.fromJson(Object? json) => PostTokensRequestPersonDocumentsCompanyAuthorizationFiles._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postTokensRequestPersonDocumentsCompanyAuthorizationFilesVariant2: parseAnyOfVariant<PostTokensRequestPersonDocumentsCompanyAuthorizationFilesVariant2>(json, (value) => PostTokensRequestPersonDocumentsCompanyAuthorizationFilesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostTokensRequestPersonDocumentsCompanyAuthorizationFilesVariant2> postTokensRequestPersonDocumentsCompanyAuthorizationFilesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postTokensRequestPersonDocumentsCompanyAuthorizationFilesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postTokensRequestPersonDocumentsCompanyAuthorizationFilesVariant2.isPresent) postTokensRequestPersonDocumentsCompanyAuthorizationFilesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTokensRequestPersonDocumentsCompanyAuthorizationFiles && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTokensRequestPersonDocumentsCompanyAuthorizationFiles(${toJson()})';
}
