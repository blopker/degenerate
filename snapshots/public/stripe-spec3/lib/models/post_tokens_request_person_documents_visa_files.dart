// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTokensRequestPersonDocumentsVisaFilesVariant2 {const PostTokensRequestPersonDocumentsVisaFilesVariant2._(this.value);

factory PostTokensRequestPersonDocumentsVisaFilesVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTokensRequestPersonDocumentsVisaFilesVariant2._(json),
}; }

static const PostTokensRequestPersonDocumentsVisaFilesVariant2 $empty = PostTokensRequestPersonDocumentsVisaFilesVariant2._('');

static const List<PostTokensRequestPersonDocumentsVisaFilesVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTokensRequestPersonDocumentsVisaFilesVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTokensRequestPersonDocumentsVisaFilesVariant2($value)'; } 
 }

@immutable
final class PostTokensRequestPersonDocumentsVisaFiles {
  const PostTokensRequestPersonDocumentsVisaFiles({this.string = const Omittable.absent(),
this.postTokensRequestPersonDocumentsVisaFilesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTokensRequestPersonDocumentsVisaFiles._({required this.rawValue, required this.string,
required this.postTokensRequestPersonDocumentsVisaFilesVariant2,});
  factory PostTokensRequestPersonDocumentsVisaFiles.fromJson(Object? json) => PostTokensRequestPersonDocumentsVisaFiles._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postTokensRequestPersonDocumentsVisaFilesVariant2: parseAnyOfVariant<PostTokensRequestPersonDocumentsVisaFilesVariant2>(json, (value) => PostTokensRequestPersonDocumentsVisaFilesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostTokensRequestPersonDocumentsVisaFilesVariant2> postTokensRequestPersonDocumentsVisaFilesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postTokensRequestPersonDocumentsVisaFilesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postTokensRequestPersonDocumentsVisaFilesVariant2.isPresent) postTokensRequestPersonDocumentsVisaFilesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTokensRequestPersonDocumentsVisaFiles && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTokensRequestPersonDocumentsVisaFiles(${toJson()})';
}
