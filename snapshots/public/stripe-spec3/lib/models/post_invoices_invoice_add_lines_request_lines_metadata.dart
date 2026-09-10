// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostInvoicesInvoiceAddLinesRequestLinesMetadataVariant2 {const PostInvoicesInvoiceAddLinesRequestLinesMetadataVariant2._(this.value);

factory PostInvoicesInvoiceAddLinesRequestLinesMetadataVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostInvoicesInvoiceAddLinesRequestLinesMetadataVariant2._(json),
};}

static const PostInvoicesInvoiceAddLinesRequestLinesMetadataVariant2 $empty = PostInvoicesInvoiceAddLinesRequestLinesMetadataVariant2._('');

static const List<PostInvoicesInvoiceAddLinesRequestLinesMetadataVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostInvoicesInvoiceAddLinesRequestLinesMetadataVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostInvoicesInvoiceAddLinesRequestLinesMetadataVariant2($value)';}
}

@immutable
final class PostInvoicesInvoiceAddLinesRequestLinesMetadata {
  const PostInvoicesInvoiceAddLinesRequestLinesMetadata({this.mapStringString = const Omittable.absent(),
this.postInvoicesInvoiceAddLinesRequestLinesMetadataVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesInvoiceAddLinesRequestLinesMetadata._({required this.rawValue, required this.mapStringString,
required this.postInvoicesInvoiceAddLinesRequestLinesMetadataVariant2,});
  factory PostInvoicesInvoiceAddLinesRequestLinesMetadata.fromJson(Object? json) => PostInvoicesInvoiceAddLinesRequestLinesMetadata._(
    rawValue: Omittable(json),
    mapStringString: parseAnyOfVariant<Map<String, String>>(json, (value) => (value! as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String))),
postInvoicesInvoiceAddLinesRequestLinesMetadataVariant2: parseAnyOfVariant<PostInvoicesInvoiceAddLinesRequestLinesMetadataVariant2>(json, (value) => PostInvoicesInvoiceAddLinesRequestLinesMetadataVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Map<String, String>> mapStringString;
final Omittable<PostInvoicesInvoiceAddLinesRequestLinesMetadataVariant2> postInvoicesInvoiceAddLinesRequestLinesMetadataVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => mapStringString.isPresent || postInvoicesInvoiceAddLinesRequestLinesMetadataVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (mapStringString.isPresent) mapStringString.value,
if (postInvoicesInvoiceAddLinesRequestLinesMetadataVariant2.isPresent) postInvoicesInvoiceAddLinesRequestLinesMetadataVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesInvoiceAddLinesRequestLinesMetadata && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesInvoiceAddLinesRequestLinesMetadata(${toJson()})';
}
