// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTokensRequestPersonDocumentsPassportFilesVariant2 {const PostTokensRequestPersonDocumentsPassportFilesVariant2._(this.value);

factory PostTokensRequestPersonDocumentsPassportFilesVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostTokensRequestPersonDocumentsPassportFilesVariant2._(json),
};}

static const PostTokensRequestPersonDocumentsPassportFilesVariant2 $empty = PostTokensRequestPersonDocumentsPassportFilesVariant2._('');

static const List<PostTokensRequestPersonDocumentsPassportFilesVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostTokensRequestPersonDocumentsPassportFilesVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostTokensRequestPersonDocumentsPassportFilesVariant2($value)';}
}

@immutable
final class PostTokensRequestPersonDocumentsPassportFiles {
  const PostTokensRequestPersonDocumentsPassportFiles({this.string = const Omittable.absent(),
this.postTokensRequestPersonDocumentsPassportFilesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTokensRequestPersonDocumentsPassportFiles._({required this.rawValue, required this.string,
required this.postTokensRequestPersonDocumentsPassportFilesVariant2,});
  factory PostTokensRequestPersonDocumentsPassportFiles.fromJson(Object? json) => PostTokensRequestPersonDocumentsPassportFiles._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postTokensRequestPersonDocumentsPassportFilesVariant2: parseAnyOfVariant<PostTokensRequestPersonDocumentsPassportFilesVariant2>(json, (value) => PostTokensRequestPersonDocumentsPassportFilesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostTokensRequestPersonDocumentsPassportFilesVariant2> postTokensRequestPersonDocumentsPassportFilesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postTokensRequestPersonDocumentsPassportFilesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postTokensRequestPersonDocumentsPassportFilesVariant2.isPresent) postTokensRequestPersonDocumentsPassportFilesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTokensRequestPersonDocumentsPassportFiles && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTokensRequestPersonDocumentsPassportFiles(${toJson()})';
}
